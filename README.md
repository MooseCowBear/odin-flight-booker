# Flight Booker

This is a solution to the [Flight Booker](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker) project from the [Odin Project's](https://www.theodinproject.com/) Rails path. 

## Features

A nested form that makes use of #accepts_nested_attributes_for that creates all of the passengers associated with a booking at once. 

The form uses Stimulus to allow adding and removing of passenger fields from a booking form in case the user changes their mind about how many tickets they would like. 

Confirmation emails are sent to each passenger when a booking is made. 

## The database

![alt text](readme_assets/uml.jpg "uml diagram of databases")

## Screenshots

The home page.

![alt text](readme_assets/home.png "home page")

After a flight search has occurred. 

![alt text](readme_assets/home_with_flight_choices.png "home page")

The updated booking page.

![alt text](readme_assets/updated_booking_new.png "booking page")

The page loaded once a user has created a successful booking. 

![alt text](readme_assets/booking_show.png "booking show page")

A sample confirmation email:

![alt text](readme_assets/confirmation_email.png "confirmation email")