class AddCheckToLineFilters < ActiveRecord::Migration[6.0]
  def change
    add_column :line_filters, :check, :boolean, :default => false
  end
end
