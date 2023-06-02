class PassengerMailer < ApplicationMailer
  default from: "confirmations@flightbooker.com"

  def confirmation_email(passenger, booking)
    @passenger = passenger
    @booking = booking

    mail(to: @passenger.email, subject: "Your Flight has been Booked!")
  end
end
