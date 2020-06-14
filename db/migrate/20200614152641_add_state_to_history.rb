class AddStateToHistory < ActiveRecord::Migration[6.0]
  def change
    add_column :histories, :state, :string
  end
end
