class PaymentsController < ApiController
  before_action :load_user, only: %i(create)

  def create
    @payment = @user.payments.create payment_params
    render json: { payment: @payment, user: @user }
  end

  def complete
    imp_uid = params[:imp_uid]
    merchant_uid = params[:merchant_uid]

    res = Iamport.payment(imp_uid)
    if res['code'] == -1
      redirect_to package_page_path, notice: '결제에 실패했습니다'
      return
    end

    amount = res['response']['amount']
    state = res['response']['status']

    payment = Payment.find_by(merchant_uid: merchant_uid)

    if state == 'paid' && amount == payment.amount
      payment.paid_at = DateTime.now
      payment.pay!
      payment.user.cash += payment.amount
      payment.user.save
    else
      body = {
        imp_uid: imp_uid,
        merchant_uid: merchant_uid,
      }
      Iamport.cancel(body)
    end

    redirect_to payment_complete_page_path(payment: payment)
  end

  private

  def load_user
    @user = User.find_by(id: params[:user_id])
  end

  def payment_params
    params.permit(:package_id, :merchant_uid, :amount, :user_id)
  end

end
