class SongratingsController < ApplicationController
  before_action :set_songrating, only: [:show, :edit, :update, :destroy]

  # GET /songratings
  # GET /songratings.json
  def index
    @songratings = Songrating.all
  end

  # GET /songratings/1
  # GET /songratings/1.json
  def show
  end

  # GET /songratings/new
  def new
    @songrating = Songrating.new
  end

  # GET /songratings/1/edit
  def edit
  end

  # POST /songratings
  # POST /songratings.json
  def create
    @songrating = Songrating.new(songrating_params)

    respond_to do |format|
      if @songrating.save
        format.html { redirect_to @songrating, notice: 'Songrating was successfully created.' }
        format.json { render :show, status: :created, location: @songrating }
      else
        format.html { render :new }
        format.json { render json: @songrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songratings/1
  # PATCH/PUT /songratings/1.json
  def update
    respond_to do |format|
      if @songrating.update(songrating_params)
        format.html { redirect_to @songrating, notice: 'Songrating was successfully updated.' }
        format.json { render :show, status: :ok, location: @songrating }
      else
        format.html { render :edit }
        format.json { render json: @songrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songratings/1
  # DELETE /songratings/1.json
  def destroy
    @songrating.destroy
    respond_to do |format|
      format.html { redirect_to songratings_url, notice: 'Songrating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_songrating
      @songrating = Songrating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def songrating_params
      params.require(:songrating).permit(:songratingid, :thesongid, :rating, :name)
    end
end
