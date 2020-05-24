class CreateUserFilters < ActiveRecord::Migration[6.0]
  def change
    create_table :user_filters do |t|
      t.references :user, null: false, foreign_key: true
      t.references :filter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
