class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @date_options = Flight.select('departure_time').distinct.order(:departure_time).map{ |f| [ f.date_formatted, f.departure_time ]}

    @flights = Flight.search(params[:departing_airport_id], params[:arriving_airport_id], params[:num_passengers], params[:travel_date])
  end
end
