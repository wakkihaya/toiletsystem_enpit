class MapController < ApplicationController
  def top
    @toilet = Toilet.all
  end

  def show

  end
end
