class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :total
      t.datetime :purchased_at
      t.references :user, null: false, foreign_key: true
      t.string :state

      t.timestamps
    end
  end
end
