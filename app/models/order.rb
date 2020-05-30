class Order < ApplicationRecord
  include AASM

  belongs_to :user
  has_many :line_filters, dependent: :destroy

  aasm.attribute_name :state
  aasm do
    state :init, initial: true
    state :cart
    state :purchased
    state :cancel_requested
    state :cancelled

    event :cart do
      transitions from: [:init], to: :cart
    end

    event :purchase do
      transitions from: [:init], to: :purchased, after: proc { self.purchased_at = DateTime.now }
    end

    event :cancel_request do
      transitions from: [:purchased], to: :cancel_requested
    end

    event :cancel do
      transitions from: [:cancel_requested], to: :cancelled, after: proc { self.canceled_at = DateTime.now }
    end
  end

  def update_total
    total = self.line_filters.checked.sum(:amount)
    update(total: total)
  end
end
