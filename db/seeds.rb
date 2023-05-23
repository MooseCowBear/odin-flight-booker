# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all

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