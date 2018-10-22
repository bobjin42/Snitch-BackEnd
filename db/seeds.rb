# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(username: "madtab", name:"Maddy", email:"mt@aol.com", password:"maddy")

locations = Location.create([
  {
  "user_id": 1,
  "latitude": "40.7062219633417",
  "longitude": "-74.01455500571569",
  "title": "flatiron school",
  "description": "too hot "
},
{
  "user_id": 1,
  "latitude": "40.714285858313985",
  "longitude": "-74.00837013428384",
  "title": "chambers st. subway",
  "description": "hate this subway station"
}

])
