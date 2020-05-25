class Payment < ApplicationRecord
  include AASM

  belongs_to :user
  belongs_to :package

  aasm.attribute_name :state
  aasm do
    state :unpaid, initial: true
    state :paid
    state :cancelled

    event :pay do
      transitions from: [:unpaid], to: :paid, after: proc { self.paid_at = DateTime.now }
    end

    event :cancel do
      transitions from: [:paid], to: :cancelled, after: proc { self.canceled_at = DateTime.now }
    end
  end
end
