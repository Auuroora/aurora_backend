class AdminMailer < ApplicationMailer
  default :from => 'CapTeamAurora@gmail.com'

  def send_check_email(user)
    puts user.email
    @user = user
    mail(:to => @user.email,
    :subject => '신고가 접수되었습니다.')
  end

  def send_manage_email(user)
    @user = user
    mail(:to => @user.email,
    :subject => '신고가 처리되었습니다.')
  end
end
