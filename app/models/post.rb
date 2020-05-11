class Post < ApplicationRecord
  belongs_to :user
  belongs_to :filter
  acts_as_taggable_on :tags
  acts_as_likeable

  validates :filter, presence: true
end
