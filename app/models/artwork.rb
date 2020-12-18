class Artwork < ApplicationRecord
  belongs_to :exposition
  has_many :component_photos
  has_one_attached :photo
end
