class MapController < ApplicationController
  def top
    @toilet = Toilet.all

    @places = Place.all
  end

  def show

  end
end
