class UserFilter < ApplicationRecord
  belongs_to :user
  belongs_to :filter
end
