class Filter < ApplicationRecord
  include ActiveModel::Serialization

  belongs_to :user
  has_many :line_items, dependent: :destroy
end
