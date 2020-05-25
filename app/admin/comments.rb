ActiveAdmin.register Comment do
  permit_params :id, :body, :commentable_id

  index do
    selectable_column
    id_column
    br
    column :body
    column :user
    column :commentable
    column :created_at
    actions
  end
end
