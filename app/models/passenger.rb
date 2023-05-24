class Passenger < ApplicationRecord
  has_many :bookings, foreign_key: :passenger_id, dependent: :destroy
  has_many :flights, through: :bookings
end
