class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :category
      t.text :content
      t.references :reportable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
