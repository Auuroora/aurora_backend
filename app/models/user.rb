class User < ApplicationRecord
  # include Commentable

  has_many :posts
  has_many :filters
  has_many :user_filters
  has_many :comments
  has_many :payments
  has_many :orders
  has_many :reports
  has_many :histories, through: :filters, source: :histories

  has_secure_password
  acts_as_follower
  acts_as_followable
  acts_as_liker
  acts_as_likeable
  # mount_uploader :avatar, AvatarUploader
  validates :email, presence: true, uniqueness: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :username, presence: true, uniqueness: true
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  enum user_type: %i(consumer maker admin)
end
