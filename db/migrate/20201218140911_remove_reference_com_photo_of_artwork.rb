class RemoveReferenceComPhotoOfArtwork < ActiveRecord::Migration[6.0]
  def change
    remove_reference :artworks, :component_photo
  end
end
