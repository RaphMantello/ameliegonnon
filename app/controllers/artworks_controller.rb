class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_artwork, only: [:show, :edit]

  def show
    authorize @artwork
  end

  def edit
    authorize @artwork
  end

  private

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end
