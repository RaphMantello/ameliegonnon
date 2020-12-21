class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing, :gallery]

  def home
  end

  def landing
    @expos = Exposition.all
  end

  def gallery
    comp_photos
  end

  private

  def comp_photos
    artworks = Artwork.all
    @comp_photos = []
    artworks.each do |aw|
      aw.component_photos.each do |photo|
        @comp_photos << photo
      end
    end
  end
end
