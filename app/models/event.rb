class Event < ApplicationRecord
  has_many :pieces, dependent: :destroy
end
