class MapController < ApplicationController
  def top
    # トイレの場所や情報を表示
    @places = Place.all

    # トイレの口コミをDBからとってくる
      @toiletreview = Toilet
  end

  def show

  end
end
