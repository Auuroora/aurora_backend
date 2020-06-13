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
    column :cash
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :username
      row :email
      row :cash
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
