ActiveAdmin.register User do
  permit_params :username, :email, :password, :password_confirmation

  scope -> { '전체' }, :all

  filter :email_cont, label: "이메일 필터"

  index do
    selectable_column
    id_column
    br
    column :username
    column :email
    column :user do |user|
      I18n.t("enum.user.user_type.#{user.user_type}")
    end
    column :created_at
    column :updated_at
  end

  show do
    attributes_table do
      row :username
      row :email
      row :user do |user|
        I18n.t("enum.user.user_type.#{user.user_type}")
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :user_type, as: :select, collection: [['소비자', :consumer], ['제작자', :maker], ['관리자', :admin]]
    end
    f.actions
  end
end
