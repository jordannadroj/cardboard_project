# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require "open-uri"

file = URI.open('https://res.cloudinary.com/jordannadroj/image/upload/v1617387439/cardboard/wf8xucrfk1lfycfhxxkn.jpg')
p = Piece.find(1)
p.photo.attach(io: file, filename: 'piece1.jpeg', content_type: 'image/jpeg')

