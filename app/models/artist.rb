class Artist < ApplicationRecord
  has_many :pieces, dependent: :destroy
end
