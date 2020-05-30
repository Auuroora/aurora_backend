class AddPostToLineFilter < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_filters, :post, index: true
  end
end
