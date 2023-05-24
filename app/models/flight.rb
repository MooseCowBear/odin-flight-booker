class Flight < ApplicationRecord
  belongs_to :departing_from, class_name: 'Airport'
  belongs_to :arriving_at, class_name: 'Airport'

  validates :departing_from_id, :arriving_at_id, :departure_time, presence: true

  def self.search(search_params)
    unless search_params.empty?
      date = search_params[:travel_date].to_datetime
      @flights = Flight.where('departing_from_id = ?', search_params[:departing_airport_id]).where('arriving_at_id = ?', search_params[:arriving_airport_id]).where('departure_time BETWEEN ? AND ?', date.beginning_of_day, date.end_of_day)
    else
      @flights = [] #want empty...
    end
  end

  def date_formatted
    departure_time.strftime("%B %d %Y")
  end

  def time_formatted
    departure_time.strftime("%A %b %e, %Y at %l:%M %P")
  end
end
