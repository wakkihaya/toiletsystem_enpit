class MapController < ApplicationController
  def top
    @places = Place.all
    @toiletreview = Toilet
  end

  def show
  end

  def search
    @places = Place.all
    @toiletreview = Toilet
    @searched_places = Place.search(params[:keyword])
  end
end
