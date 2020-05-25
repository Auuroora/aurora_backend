class Package < ApplicationRecord
  has_many :payments, dependent: :destroy
end
