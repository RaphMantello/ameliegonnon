class ComponentPhoto < ApplicationRecord
  has_many :artworks
  has_many_attached :photos
end
