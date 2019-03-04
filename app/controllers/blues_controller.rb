class BluesController < ApplicationController
  before_action :set_blue, only: [:show, :edit, :update, :destroy]

  # GET /blues
  # GET /blues.json
  def index
    @blues = Blue.all
  end

  # GET /blues/1
  # GET /blues/1.json
  def show
  end

  # GET /blues/new
  def new
    @blue = Blue.new
  end

  # GET /blues/1/edit
  def edit
  end

  # POST /blues
  # POST /blues.json
  def create
    @blue = Blue.new(blue_params)

    respond_to do |format|
      if @blue.save
        format.html { redirect_to request.referrer, notice: 'Blue was successfully created.' }
        format.json { render :show, status: :created, location: @blue }
      else
        format.html { render :new }
        format.json { render json: @blue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blues/1
  # PATCH/PUT /blues/1.json
  def update
    respond_to do |format|
      if @blue.update(blue_params)
        format.html { redirect_to @blue, notice: 'Blue was successfully updated.' }
        format.json { render :show, status: :ok, location: @blue }
      else
        format.html { render :edit }
        format.json { render json: @blue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blues/1
  # DELETE /blues/1.json
  def destroy
    @blue.destroy
    respond_to do |format|
      format.html { redirect_to blues_url, notice: 'Blue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blue
      @blue = Blue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blue_params
      params.require(:blue).permit(:danceability, :energy, :loudness, :mode, :valence, :tempo, :user_id)
    end
end
