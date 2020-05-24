class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
