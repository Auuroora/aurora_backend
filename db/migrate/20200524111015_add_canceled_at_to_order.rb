class AddCanceledAtToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :canceled_at, :datetime
  end
end
