# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Booking.destroy_all 
Topic.destroy_all

t = Topic.create name: "NewThingsToLearn", description: "Wonderful"  
t.bookings.create(occurs_on: Date.new)



 