ActiveAdmin.register Filter do
  permit_params :user_id, :filter_data_path, :filter_name

  scope -> { '전체' }, :all

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

  show do
    attributes_table do
      row :user
      row :filter_data_path
      row :filter_name
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :user
      f.input :filter_data_path
      f.input :filter_name
    end
    f.actions
  end
end
