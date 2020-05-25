ActiveAdmin.register Post do
    permit_params :title, :description, :user_id

    scope -> { '전체' }, :all

    index do
      selectable_column
      id_column
      br
      column :title
      column :user
      column :created_at
      column :updated_at
      column :price
      column :filter
      actions
    end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
