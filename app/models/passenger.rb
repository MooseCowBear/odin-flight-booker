class Passenger < ApplicationRecord
  belongs_to :bookings

  validates :name, :email, presence: true
end
