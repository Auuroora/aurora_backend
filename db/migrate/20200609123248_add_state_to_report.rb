class AddStateToReport < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :state, :string
  end
end
