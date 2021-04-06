# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require "open-uri"

Artist.destroy_all
puts "destroyed artists"
Event.destroy_all
puts "destroyed Events"
Piece.destroy_all
puts "destroyed art"



artist = Artist.new(
  name: "Leonardo da Vinci"
  )

artist.save

puts "created artist #{Artist.first.name}"

event = Event.new(
  title: "Cardboard Project 3.0",
  year: 2021
  )

event.save

puts "created event #{Event.first.title}"

Piece.create!(
  title: "Mona Lisa",
  description: "The most famous painting of all time",
  artist_id: Artist.first.id,
  event_id: Event.first.id
  )

puts "created piece #{Piece.first.title}"


file = URI.open('https://res.cloudinary.com/jordannadroj/image/upload/v1617387439/cardboard/wf8xucrfk1lfycfhxxkn.jpg')
piece = Piece.first
piece.photo.attach(io: file, filename: 'piece1.jpg', content_type: 'image/jpg')

puts "seeding complete"

