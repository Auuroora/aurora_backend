class AddAmountToLineFilters < ActiveRecord::Migration[6.0]
  def change
    add_column :line_filters, :amount, :integer, :default => 0
  end
end
