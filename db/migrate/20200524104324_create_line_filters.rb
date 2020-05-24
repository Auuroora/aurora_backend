class CreateLineFilters < ActiveRecord::Migration[6.0]
  def change
    create_table :line_filters do |t|
      t.references :filter, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
