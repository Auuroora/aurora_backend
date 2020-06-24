class Post < ApplicationRecord
  # acts_as_paranoid
  include Commentable

  belongs_to :user
  belongs_to :filter

  has_many :reports, as: :reportable
  has_many :line_filters, dependent: :destroy

  acts_as_taggable_on :tags
  acts_as_likeable

  validates :filter, presence: true
end
