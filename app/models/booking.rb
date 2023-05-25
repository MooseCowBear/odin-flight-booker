class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, dependent: :destroy

  accepts_nested_attributes_for :passengers, reject_if: lambda {|attributes| attributes['name'].blank? || attributes['email'].blank? }

  def annouce_passengers
    num = passengers.count
    if passengers.count > 1
      "There are #{num} passengers in this booking."
    else
      "There is one passenger in this booking."
    end
  end

  def reject_passengers
    attributes.any?{ |k, v| v[:name].blank? || v[:email].blank? }
  end
end
