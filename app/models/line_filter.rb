class LineFilter < ApplicationRecord
  belongs_to :filter
  belongs_to :order

  scope :checked, -> { where(check: true) }
  scope :unchecked, -> { where(check: false) }
end
