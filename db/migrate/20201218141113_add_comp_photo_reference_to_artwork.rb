class AddCompPhotoReferenceToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_reference :component_photos, :artwork
  end
end
