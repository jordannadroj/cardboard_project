class Piece < ApplicationRecord
  belongs_to :artist
  belongs_to :event
  has_one_attached :picture
end
