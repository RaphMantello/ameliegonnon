class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing, :gallery]

  def home
    set_articles
  end

  def landing
    @expos = Exposition.all
  end

  def gallery
    comp_photos
  end

  private

  def set_articles
    @articles = PressArticle.all.last(4)
  end

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
