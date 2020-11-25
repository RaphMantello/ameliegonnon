class Artwork < ApplicationRecord
  belongs_to :exposition
  has_one_attached :photo
end
