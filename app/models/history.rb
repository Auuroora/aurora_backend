class History < ApplicationRecord
  include AASM

  belongs_to :user
  belongs_to :filter

  aasm.attribute_name :state
  aasm do
    state :non_exchange, initial: true
    state :cashed
    state :exchange_requested
    state :exchanged

    after_all_transitions :log_state_change

    event :returned_as_cash do
      transitions from: [:non_exchange], to: :cashed, after: proc { self.exchanged_at = DateTime.now }
    end

    event :exchange_request do
      transitions from: [:non_exchange], to: :exchange_requested
    end

    event :exchange do
      transitions from: [:exchange_requested], to: :exchanged, after: proc { self.exchanged_at = DateTime.now }
    end
  end

  def log_state_change
    if (aasm.to_state == :cashed)
      seller = self.filter.user
      seller.cash += self.amount
      seller.save!
    end
  end
end
