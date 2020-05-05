class Post < ApplicationRecord
  belongs_to :user
  belongs_to :filter
  acts_as_taggable_on :tags

  validates :filter, presence: true
end
