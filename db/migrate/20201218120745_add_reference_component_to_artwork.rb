class AddReferenceComponentToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_reference :artworks, :component_photo
  end
end
