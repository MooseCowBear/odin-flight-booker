class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', foreign_key: 'departing_from_id'
  has_many :arriving_flights, class_name: 'Flight', foreign_key: 'arriving_at_id'
end
