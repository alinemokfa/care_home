# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Resident.delete_all
Room.delete_all

Room.delete_all
Resident.delete_all

Room.delete_all
Resident.delete_all

room1 = Room.create({number: "1", capacity: "2"})
room1.save
room2 = Room.create({number: "2", capacity: "1"})
room2.save

resident1 = Resident.create({name: "Rachel M", age: "80", allergies: "Fragrances", medications: "Fluoxetine 20mg", next_of_kin: "Robert M", nok_phone_number: "07767890233", shared_room: true, room_id: room2.id})
resident1.save

resident2 = Resident.create({name: "Sonia D", age: "85", allergies: "Nuts", medications: "None", next_of_kin: "Aline M", nok_phone_number: "07533510424", shared_room: false, room_id: room2.id})
resident1.save
