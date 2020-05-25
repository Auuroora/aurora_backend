class PaymentsController < ApiController
  before_action :authorize_request

  def create
    @payment = @current_user.payments.create payment_params
    render json: { payment: @payment, user: @current_user }
  end

  def complete
    imp_uid = params[:imp_uid]
    merchant_uid = params[:merchant_uid]

    res = Iamport.payment(imp_uid)
    if res['code'] == -1
      redirect_to root_path, notice: '결제에 실패했습니다'
      return
    end

    amount = res['response']['amount']
    state = res['response']['status']

    payment = @current_user.payments.find_by(merchant_uid: merchant_uid)

    if state == 'paid' && amount == payment.amount && res['response']['fail_reason'].nil?
      payment.paid_at = DateTime.now
      payment.pay!
      payment.user.cash += payment.amount
      payment.user.save
      @msg = '결제에 성공했습니다'
    else
      body = {
        imp_uid: imp_uid,
        merchant_uid: merchant_uid,
      }
      Iamport.cancel(body)
      @msg = '결제에 실패했습니다'
    end

    redirect_to package_page_path
  end

  private

  def payment_params
    params.permit(:package_id, :merchant_uid, :amount)
  end

end
