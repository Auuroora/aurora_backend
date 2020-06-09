ActiveAdmin.register Filter do
  index do
    selectable_column
    id_column
    br
    column :filter_data_path
    column :user_id
    column :filter_name
    column :created_at
    actions
  end
end
