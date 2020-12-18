class ComponentPhoto < ApplicationRecord
  belongs_to :artwork
  has_many_attached :photos
end
