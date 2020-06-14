class History < ApplicationRecord
  include AASM

  aasm.attribute_name :state
  aasm do
    state :non_exchange, initial: true
    state :exchange_requested
    state :exchanged

    event :exchange_request do
      transitions from: [:non_exchange], to: :exchange_requested
    end

    event :exchange do
      transitions from: [:exchange_requested], to: :exchanged,  after: proc { self.exchanged_at = DateTime.now }
    end
  end
end
