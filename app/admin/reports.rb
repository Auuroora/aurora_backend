ActiveAdmin.register Report do
  permit_params :category, :content, :reportable_type, :reportable_id, :user_id, :state

  before_filter :skip_sidebar!, :only => :index

  scope -> { '전체' }, :all
  scope -> { '저작권 신고' }, :copyright
  scope -> { '욕설 신고' }, :insult
  scope -> { '접수' }, :recept
  scope -> { '처리중' }, :check
  scope -> { '처리 완료' }, :manage

  index do
    selectable_column
    id_column
    a link_to ("10 개씩 보기"), "/admin/reports?order=id_desc&per_page=10", class: "button small"
    a link_to ("20 개씩 보기"), "/admin/reports?order=id_desc&per_page=20", class: "button small"
    a link_to ("30 개씩 보기"), "/admin/reports?order=id_desc&per_page=30", class: "button small"
    a link_to ("모두 보기"), "/admin/reports?order=id_desc&per_page=#{Report.count}", class: "button small"
    br
    column :reportable_type do |report|
      I18n.t("active_admin.enum.report.reportable_type.#{report.reportable_type}")
    end
    column :category do |report|
      I18n.t("active_admin.enum.report.category.#{report.category}")
    end
    column :reportable
    column :user
    column :state do |report|
      I18n.t("active_admin.enum.report.state.#{report.state}")
    end
    actions default: true do |user|
    end
  end

  show do
    attributes_table do
      row :user
      row(:reportable_type) do |report|
        I18n.t("active_admin.enum.report.reportable_type.#{report.reportable_type}")
      end
      row :reportable
      row :user
      row :state do |report|
        I18n.t("active_admin.enum.report.state.#{report.state}")
      end
      row :content
      row :created_at
      row :updated_at
    end
  end

  action_item :view, only: :show do
    if resource.state == "recept"
      link_to '처리 중으로 변경', check_admin_report_path(resource), method: :PUT
    elsif resource.state == "check"
      link_to '처리 완료로 변경', manage_admin_report_path(resource), method: :PUT
    else
      link_to '처리 완료'
    end
  end

  member_action :check, method: :put do
    resource.checking!
    AdminMailer.send_check_email(resource.user).deliver
    redirect_to action: :index
  end

  member_action :manage, method: :put do
    resource.managing!
    AdminMailer.send_manage_email(resource.user).deliver
    redirect_to action: :index
  end

end
