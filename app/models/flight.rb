class Flight < ApplicationRecord
  belongs_to :departing_from, class_name: 'Airport'
  belongs_to :arriving_at, class_name: 'Airport'
end
