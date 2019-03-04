class PurplesController < ApplicationController
  before_action :set_purple, only: [:show, :edit, :update, :destroy]

  # GET /purples
  # GET /purples.json
  def index
    @purples = Purple.all
  end

  # GET /purples/1
  # GET /purples/1.json
  def show
  end

  # GET /purples/new
  def new
    @purple = Purple.new
  end

  # GET /purples/1/edit
  def edit
  end

  # POST /purples
  # POST /purples.json
  def create
    @purple = Purple.new(purple_params)

    respond_to do |format|
      if @purple.save
        format.html { redirect_to @purple, notice: 'Purple was successfully created.' }
        format.json { render :show, status: :created, location: @purple }
      else
        format.html { render :new }
        format.json { render json: @purple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purples/1
  # PATCH/PUT /purples/1.json
  def update
    respond_to do |format|
      if @purple.update(purple_params)
        format.html { redirect_to @purple, notice: 'Purple was successfully updated.' }
        format.json { render :show, status: :ok, location: @purple }
      else
        format.html { render :edit }
        format.json { render json: @purple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purples/1
  # DELETE /purples/1.json
  def destroy
    @purple.destroy
    respond_to do |format|
      format.html { redirect_to purples_url, notice: 'Purple was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purple
      @purple = Purple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purple_params
      params.require(:purple).permit(:danceability, :energy, :loudness, :mode, :valence, :tempo, :user_id)
    end
end
