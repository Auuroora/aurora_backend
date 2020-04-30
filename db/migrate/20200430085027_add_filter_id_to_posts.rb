class AddFilterIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :filter, foreign_key: true
    add_column :posts, :price, :integer
  end
end
