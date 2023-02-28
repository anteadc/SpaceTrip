# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

Listing.destroy_all
User.destroy_all


puts "seeding"
puts "creating 4 user"
jeff = User.create(first_name: "Jeff", last_name: "Bezos", email: "jeff@gmail.com", password: "123456")
richard = User.create(first_name: "Richard", last_name: "Branson", email: "richard@gmail.com", password: "123456")
elon = User.create(first_name: "Elon", last_name: "Musk", email: "elon@gmail.com", password: "123456")
puts "creaed 4 user"

puts "creating listings"
list1 = Listing.create!(name: "MoonHorse", launch_site: "Corn Ranch,Texas, United States", rating: 7, price: 150_000, depart_date: Date.today, capacity:20, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", short_description: "Lorem ipsum dolor si", user: jeff, features: ["Wifi", 'Gym', 'Entertainment', 'Spa'])
list2 = Listing.create!(name: "BananaMoon", launch_site: "Corn Ranch,Texas, United States", rating: 8, price: 450_000, depart_date: Date.today, capacity:25,  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", short_description: "Lorem ipsum", user: richard, features: ['Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool'])
list3 = Listing.create!(name: "SpaceCowboy", launch_site: "Corn Ranch,Texas, United States", rating: 9, price: 700_000, depart_date: Date.today, capacity:15, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", short_description: "Lorem ipsum dolor", user: elon, features: ['Gym', 'Entertainment', 'Spa', 'Quantum Hyperspace Drive', 'Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool', 'Bananas'])
puts "created listing"
puts "attaching photos"

list1.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677575677/ship1.jpg')), filename: 'ship1.png', content_type: 'image/png')

list2.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677575677/ship3.avif')), filename: 'ship2.png', content_type: 'image/png')

list3.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677575677/ship2.avif')), filename: 'ship3.png', content_type: 'image/png')

puts "photos attached"
puts "done"
