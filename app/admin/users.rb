ActiveAdmin.register User do
  permit_params :username, :email, :password, :password_confirmation

  scope -> { '전체' }, :all

  filter :email_cont, label: "이메일 필터"

  show do
    attributes_table do
      row :username
      row :email
    end
  end

  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
