class AddUserTypeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_type, :integer
  end
end
