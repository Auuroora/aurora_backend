module Commentable
  extend ActiveSupport::Concern
  included do
    has_many :comments, as: :commentable
  end

  def comment_count
    comments.count
  end

  module ClassMethods
  end
end
