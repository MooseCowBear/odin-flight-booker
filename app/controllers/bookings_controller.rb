class BookingsController < ApplicationController
  def new
    @flight = Flight.find(search_params[:flight_id])
    @num = search_params[:num_tickets].to_i
    @booking = Booking.new
  end

  def create
    
  end

  private

  def search_params
    params.permit(:flight_id, :num_tickets)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
  end
end