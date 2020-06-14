class AddExchangedAtToHistory < ActiveRecord::Migration[6.0]
  def change
    add_column :histories, :exchanged_at, :datetime
  end
end
