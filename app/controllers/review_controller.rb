# frozen_string_literal: true

class ReviewController < ApplicationController
  def post
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    if @toilet.save
      # toiletの名前が一致したら、コメントを複数表示するaddリアクションにrender
      render '/map/top'
    else
      render './map/top'
    end
  end

  private
  def toilet_params
    params.require(:toilet).permit(:comment)
  end

end
