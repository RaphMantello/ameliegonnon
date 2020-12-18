class Artwork < ApplicationRecord
  belongs_to :exposition
  belongs_to :component_photo
  has_one_attached :photo
end
