class ExpositionsController < ApplicationController
  before_action :set_expo, only: [:show]

  def show
    authorize @expo
  end

  private

  def set_expo
    @expo = Exposition.find(params[:id])
  end
end
