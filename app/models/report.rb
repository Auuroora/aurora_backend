class Report < ApplicationRecord
  include AASM

  belongs_to :user
  belongs_to :reportable, polymorphic: true

  enum category: %i(copyright insult)

  aasm.attribute_name :state
  aasm do
    state :recept, initial: true
    state :check
    state :manage

    event :checking do
      transitions from: [:recept], to: :check
    end

    event :managing do
      transitions from: [:check], to: :manage
    end
  end
end
