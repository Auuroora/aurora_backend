class AddDeletedAtToFilter < ActiveRecord::Migration[6.0]
  def change
    add_column :filters, :deleted_at, :datetime
    add_index :filters, :deleted_at
  end
end
