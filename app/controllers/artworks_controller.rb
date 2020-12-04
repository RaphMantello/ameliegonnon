class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_artwork, only: [:show, :edit, :update]

  def show
    authorize @artwork
  end

  def edit
    authorize @artwork
  end

  def update
    if @artwork.update(artwork_params)
      authorize @artwork
      redirect_to @artwork
    else
      render :edit
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:name, :description, :photo)
  end

  def set_artwork
    @artwork = Artwork.find(params[:id])
  end
end
