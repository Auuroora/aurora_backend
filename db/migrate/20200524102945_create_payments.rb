class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :package, null: false, foreign_key: true
      t.string :state
      t.string :merchant_uid
      t.datetime :paid_at
      t.datetime :canceled_at

      t.timestamps
    end
  end
end
