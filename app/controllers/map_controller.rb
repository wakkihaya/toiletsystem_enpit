class MapController < ApplicationController
  def top
    @toilet = Toilet.all

    @place = Place.all
  end

  def show

  end
end
