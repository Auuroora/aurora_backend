class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :reports, as: :reportable
end
