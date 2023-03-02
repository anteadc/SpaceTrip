# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

Booking.destroy_all
Listing.destroy_all
User.destroy_all


puts "seeding"
puts "creating 4 user"
jeff = User.create(first_name: "Jeff", last_name: "Bezos", email: "jeff@gmail.com", bio: "Jeff enjoys long walks on his private island, counting his money, and practicing his villainous monologue in front of the mirror. He's also a big fan of hair gel. Despite his immense wealth and power, Jeff remains humble and down-to-earth. He's just a regular guy who happens to have more money than most countries. No big deal.", password: "123456")
richard = User.create(first_name: "Richard", last_name: "Branson", email: "richard@gmail.com", bio: "Famous for inventing nothing new and tring to put the great back in 'Great Britain'. He's famous for his trademark flowing blond locks and his affinity for crazy stunts, like hot air ballooning across the Atlantic or dressing up as a flight attendant and serving drinks on one of his planes.", password: "123456")
elon = User.create(first_name: "Elon", last_name: "Musk", email: "elon@gmail.com", bio: "When he's not launching Teslas into space, he can be found tweeting about Dogecoin and wearing his favorite 'Mars or Bust' t-shirt. In his spare time, Musk enjoys developing new AI technology and pondering the meaning of life on Mars. If you ever run into Elon Musk, be sure to ask him about his favorite Pokemon or how he plans to defeat the alien invasion.", password: "123456")
puts "creaed 4 user"

puts "creating listings"
list1 = Listing.create!(name: "Explore caves on Mercury", launch_site: "Corn Ranch,Texas, United States", rating: 7, price: 150_000, depart_date: Date.today, capacity:20, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Reports of roars deep in the caves", user: jeff, features: ["Wifi", 'Gym', 'Entertainment', 'Spa'])
list2 = Listing.create!(name: "Become space pilot", launch_site: "Jiuquan Satellite Launch Center, China", rating: 8, price: 450_000, depart_date: Date.today, capacity:25,  description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "How is insurance going to cover this?", user: richard, features: ['Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool'])
list3 = Listing.create!(name: "Stay at Lunar Hotel", launch_site: "Rocket Lab Launch Complex 1, New Zealand", rating: 9, price: 700_000, depart_date: Date.today, capacity:15, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Dont drink the tap water", user: elon, features: ['Gym', 'Entertainment', 'Spa', 'Quantum Hyperspace Drive', 'Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool', 'Bananas'])
list4 = Listing.create!(name: "Go starseeing in space", launch_site: "Cape Canaveral Space Force Station,Florida, United States", rating: 7, price: 170_000, depart_date: Date.today, capacity:10, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Stars but more", user: jeff, features: ["Wifi", 'Gym', 'Entertainment', 'Spa'])
list5 = Listing.create!(name: "Circle around Mars", launch_site: "Satish Dhawan Space Centre (SHAR), Andhra Pradesh, India", rating: 8, price: 550_000, depart_date: Date.today, capacity:5,  description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "No mars bars there", user: richard, features: ['Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool'])
list6 = Listing.create!(name: "Moonwalk on the Moon", launch_site: "Naro Space Center, South Jeolla, South Korea", rating: 9, price: 740_000, depart_date: Date.today, capacity:15, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Gravity not included", user: elon, features: ['Gym', 'Entertainment', 'Spa', 'Quantum Hyperspace Drive', 'Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool', 'Bananas'])
list7 = Listing.create!(name: "Visit a satalite", launch_site: "Woomera Prohibited Area, South Australia", rating: 7, price: 350_000, depart_date: Date.today, capacity:20, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Blame this for bad signal", user: jeff, features: ["Wifi", 'Gym', 'Entertainment', 'Spa'])
list8 = Listing.create!(name: "Explore the red planet", launch_site: "San Marco platform, Broglio Space Centre, Malindi, Kenya", rating: 8, price: 300_000, depart_date: Date.today, capacity:25,  description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "No return ticket", user: richard, features: ['Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool'])
puts "created listing"
puts "attaching listing photos"

list1.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737845/trip5_lgewu6.jpg')), filename: 'trip1.png', content_type: 'image/png')
list2.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737845/trip4_ejgfuq.jpg')), filename: 'trip2.png', content_type: 'image/png')
list3.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737845/trip3_z7xou2.jpg')), filename: 'trip3.png', content_type: 'image/png')
list4.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737845/trip1_d2gtkv.jpg')), filename: 'trip4.png', content_type: 'image/png')
list5.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737846/trip7_rauoqi.jpg')), filename: 'trip5.png', content_type: 'image/png')
list6.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737846/trip2_bbewkv.jpg')), filename: 'trip6.png', content_type: 'image/png')
list7.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737846/trip6_lqliti.jpg')), filename: 'trip7.png', content_type: 'image/png')
list8.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677737846/trip8_jj9ftl.jpg')), filename: 'trip8.png', content_type: 'image/png')

puts "photos listing attached"

puts "attaching rocketman photos"
jeff.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677651624/jeff.jpg')), filename: 'jeff.png', content_type: 'image/png')
richard.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677651638/richard.jpg')), filename: 'richard.png', content_type: 'image/png')
elon.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677651609/elon.jpg')), filename: 'elon.png', content_type: 'image/png')
puts "attached"
puts "done"
