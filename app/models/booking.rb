class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, dependent: :destroy

  accepts_nested_attributes_for :passengers, allow_destroy: true, reject_if: proc { |attr| attr['name'].blank? || attr['email'].blank? }

  validates :passengers, length: { minimum: 1 } 

  def annouce_passengers
    num = passengers.count
    if passengers.count > 1
      "There are #{num} passengers in this booking."
    else
      "There is one passenger in this booking."
    end
  end
end
