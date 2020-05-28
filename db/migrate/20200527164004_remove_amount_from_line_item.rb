class RemoveAmountFromLineItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_filters, :amount
  end
end
