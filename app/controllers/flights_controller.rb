class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @date_options = Flight.select('departure_time').distinct.order(:departure_time).map{ |f| [ f.date_formatted, f.departure_time.to_date ] }.uniq
    @flights = Flight.search(search_params)
  end

  private 

  def search_params
    params.permit(:departing_airport_id, :arriving_airport_id, :num_passengers, :travel_date)
  end
end
