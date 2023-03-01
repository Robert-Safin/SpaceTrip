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
list1 = Listing.create!(name: "Jeff's pocket change rocket", launch_site: "Corn Ranch,Texas, United States", rating: 7, price: 150_000, depart_date: Date.today, capacity:20, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Jeff used his pocket change to launch this", user: jeff, features: ["Wifi", 'Gym', 'Entertainment', 'Spa'])
list2 = Listing.create!(name: "InterGalactic Banana", launch_site: "Jiuquan Satellite Launch Center, China", rating: 8, price: 450_000, depart_date: Date.today, capacity:25,  description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Another british attempt at success", user: richard, features: ['Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool'])
list3 = Listing.create!(name: "ElonGOAT Rocket", launch_site: "Rocket Lab Launch Complex 1, New Zealand", rating: 9, price: 700_000, depart_date: Date.today, capacity:15, description: "Space travel is the ultimate adventure that humanity has always been fascinated with. It offers a unique opportunity to explore the unknown, witness breathtaking views of our planet from above, and expand our knowledge about the universe. Imagine experiencing zero gravity, seeing the stunning beauty of Earth from the International Space Station, or even landing on the moon or Mars! Space travel is no longer limited to just astronauts, with private companies like SpaceX and Virgin Galactic making it more accessible to the general public. It’s a chance to push the boundaries of what’s possible, to become part of history, and to inspire future generations. So why not seize the opportunity to fulfill your childhood dream and embark on a journey to the stars? Book your space travel adventure today and prepare to have your mind blown!", short_description: "Becuase running Twitter was too hard", user: elon, features: ['Gym', 'Entertainment', 'Spa', 'Quantum Hyperspace Drive', 'Zero-Gravity Spa', 'Artificial Intelligence Butler', 'Holographic Entertainment Suite', 'Space Garden', 'Personalized Atmosphere Control', 'Anti-Gravity Gym', 'Quantum-Entangled Teleportation', 'Infrared Sauna', 'Gravity Defying Infinity Pool', 'Bananas'])
puts "created listing"
puts "attaching listing photos"

list1.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677575677/ship1.jpg')), filename: 'ship1.png', content_type: 'image/png')

list2.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677575677/ship3.avif')), filename: 'ship2.png', content_type: 'image/png')

list3.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677575677/ship2.avif')), filename: 'ship3.png', content_type: 'image/png')

puts "photos listing attached"

puts "attaching rocketman photos"
jeff.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677651624/jeff.jpg')), filename: 'jeff.png', content_type: 'image/png')
richard.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677651638/richard.jpg')), filename: 'richard.png', content_type: 'image/png')
elon.photo.attach(io: File.open(URI.open('https://res.cloudinary.com/dxgkclowd/image/upload/v1677651609/elon.jpg')), filename: 'elon.png', content_type: 'image/png')
puts "attached"
puts "done"
