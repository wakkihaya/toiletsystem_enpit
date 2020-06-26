class ToiletsController < ApplicationController
  # before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  # GET /toilets
  # GET /toilets.json
  # def index
  #   @toilets = Toilet.all
  # end

  # GET /toilets/1
  # GET /toilets/1.json
  # def show
  # end

  # GET /toilets/new
  def new
    @toilet = Toilet.new
  end

  # GET /toilets/1/edit
  # def edit
  # end

  # POST /toilets
  # POST /toilets.json
  def create
    place = Place.where(id: toilet_params[:place]).select('name')
    puts place
    toilet_params[:place] = place #ここのplace(3D)が渡されていないみたい
    puts toilet_params
    @toilet = Toilet.new(toilet_params)

     if @toilet.save
        redirect_to '/'
     end
  end

  # PATCH/PUT /toilets/1
  # PATCH/PUT /toilets/1.json
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

  # DELETE /toilets/1
  # DELETE /toilets/1.json
  def destroy
    @toilet.destroy
    respond_to do |format|
      format.html { redirect_to toilets_url, notice: 'Toilet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def toilet_params
    params.require(:toilet).permit(:place, :comment)
  end
end
