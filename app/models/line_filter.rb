class LineFilter < ApplicationRecord
  belongs_to :filter
  belongs_to :order
  belongs_to :post

  scope :checked, -> { where(check: true) }
  scope :unchecked, -> { where(check: false) }
end
