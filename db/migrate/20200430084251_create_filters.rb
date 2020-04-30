class CreateFilters < ActiveRecord::Migration[6.0]
  def change
    create_table :filters do |t|
      t.string :filter_data_path
      t.string :filter_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
