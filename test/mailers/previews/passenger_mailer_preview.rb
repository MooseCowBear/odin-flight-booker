# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def confirmation_email
    booking = Booking.last 
    passenger = booking.passengers.first

    PassengerMailer.confirmation_email(passenger, booking)
  end
end
