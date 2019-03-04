class YellowsController < ApplicationController
  before_action :set_yellow, only: [:show, :edit, :update, :destroy]

  # GET /yellows
  # GET /yellows.json
  def index
    @yellows = Yellow.all
  end

  # GET /yellows/1
  # GET /yellows/1.json
  def show
  end

  # GET /yellows/new
  def new
    @yellow = Yellow.new
  end

  # GET /yellows/1/edit
  def edit
  end

  # POST /yellows
  # POST /yellows.json
  def create
    @yellow = Yellow.new(yellow_params)

    respond_to do |format|
      if @yellow.save
        format.html { redirect_to request.referrer, notice: 'Yellow was successfully created.' }
        format.json { render :show, status: :created, location: @yellow }
      else
        format.html { render :new }
        format.json { render json: @yellow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yellows/1
  # PATCH/PUT /yellows/1.json
  def update
    respond_to do |format|
      if @yellow.update(yellow_params)
        format.html { redirect_to @yellow, notice: 'Yellow was successfully updated.' }
        format.json { render :show, status: :ok, location: @yellow }
      else
        format.html { render :edit }
        format.json { render json: @yellow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yellows/1
  # DELETE /yellows/1.json
  def destroy
    @yellow.destroy
    respond_to do |format|
      format.html { redirect_to yellows_url, notice: 'Yellow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yellow
      @yellow = Yellow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yellow_params
      params.require(:yellow).permit(:danceability, :energy, :loudness, :mode, :valence, :tempo, :user_id)
    end
end
