class AddImageToUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :user_type
    add_column :users, :image, :string
  end
end
