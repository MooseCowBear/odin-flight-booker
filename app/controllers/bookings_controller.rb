class BookingsController < ApplicationController
  def new
    @flight = Flight.find(search_params[:flight_id])
    @num = search_params[:num_tickets].to_i
    @booking = Booking.new
    @num.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Your flight has been booked!"
      redirect_to root_path
    else
      flash.now[:alert] = "Something went wrong."
      render "new"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def search_params
    params.permit(:flight_id, :num_tickets)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
