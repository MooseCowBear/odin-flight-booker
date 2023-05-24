class Flight < ApplicationRecord
  belongs_to :departing_from, class_name: 'Airport'
  belongs_to :arriving_at, class_name: 'Airport'

  validates :departing_from_id, :arriving_at_id, :departure_time, presence: true

  def self.search(departs, arrives, num, date)
    if departs && arrives && num && date
      #right now num does nothing....
      date = date.to_datetime
      @flights = Flight.where('departing_from_id = ?', departs).where('arriving_at_id = ?', arrives).where('departure_time BETWEEN ? AND ?', date.beginning_of_day, date.end_of_day)
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
