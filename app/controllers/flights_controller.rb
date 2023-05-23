class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }

    @flights = Flight.search(params[:departing_airport_id], params[:arriving_airport_id], params[:num_passengers], params[:travel_date])
  end
end
