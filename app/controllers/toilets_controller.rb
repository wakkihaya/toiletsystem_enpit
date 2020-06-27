class ToiletsController < ApplicationController
  # before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  def index
    @toilet = Toilet.new
  end


  def create
     @toilet = Toilet.new(toilet_params)

     if @toilet.save
        redirect_to '/'
     else
        render 'index'
     end
  end

  def update
    respond_to do |format|
      if @toilet.update(toilet_params)
        format.html { redirect_to @toilet, notice: 'Toilet was successfully updated.' }
        format.json { render :show, status: :ok, location: @toilet }
      else
        format.html { render :edit }
        format.json { render json: @toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @toilet.destroy
    respond_to do |format|
      format.html { redirect_to toilets_url, notice: 'Toilet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:name, :comment)
  end
end
