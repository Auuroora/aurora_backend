ActiveAdmin.register Payment do

  member_action :cancel do
    if resource.user.cash > resource.amount
      resource.user.cash -= resource.amount
      resource.user.save
      resource.cancel!
      redirect_to admin_payments_path, alert: "결제를 취소하였습니다."
    else
      redirect_to admin_payments_path, alert: "환불처리가 불가능합니다."
    end
  end

  action_item :cancel_payment, only: :show, if: proc{ resource.paid? } do
    link_to "결제 취소하기", cancel_admin_payment_path(resource)
  end

end
