class Filter < ApplicationRecord
  include ActiveModel::Serialization

  belongs_to :user
  has_many :histories, dependent: :destroy
  has_many :posts, dependent: :destroy

  # has_many :line_items, dependent: :destroy
end
