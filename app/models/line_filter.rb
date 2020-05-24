class LineFilter < ApplicationRecord
  belongs_to :filter
  belongs_to :order
end
