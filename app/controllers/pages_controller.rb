class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :landing, :gallery ]

  def home
  end

  def landing
  end

  def gallery
  end
end
