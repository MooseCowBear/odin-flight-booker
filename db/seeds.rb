# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create!([{
  name: "Hartsfield–Jackson Atlanta International Airport",
  code: "ATL",
}, 
{
  name: "Dallas/Fort Worth International Airport",
  code: "DFW",
},
{
  name: "Denver International Airport", 
  code: "DEN"
},
{
  name: "Chicago O’Hare International Airport", 
  code: "ORD"
},
{
  name: "Dubai International Airport", 
  code: "DBX"
},
{
  name: "Los Angeles International Airport", 
  code: "LAX"
},
{
  name: "Istanbul Airport", 
  code: "IST"
},
{
  name: "Heathrow Airport", 
  code: "LHR"
},
{
  name: "Indira Gandhi International Airport", 
  code: "DEL"
},
{
  name: "Paris Charles de Gaulle Airport", 
  code: "CDG"
}])

pairs = (1..10).to_a.permutation(2).to_a
start_dates = [DateTime.now.change({ hour: 7, min: 30 }), DateTime.now.change({ hour: 12, min: 00 }), DateTime.now.change({ hour: 16, min: 30 })]

pairs.each do |p|
  start_dates.each do |s|
    30.times do |t|
      dur = Random.new.rand(140..1080)
      depart = p[0]
      dest = p[1]
      time = s.next_day(t)

      Flight.create!(departing_from_id: depart, arriving_at_id: dest, duration: dur, departure_time: time)
    end
  end
end