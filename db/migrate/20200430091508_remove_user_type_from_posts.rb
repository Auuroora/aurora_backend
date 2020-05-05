class RemoveUserTypeFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :user_type
    add_column :users, :user_type, :integer
  end
end
