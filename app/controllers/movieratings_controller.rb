class MovieratingsController < ApplicationController
  before_action :set_movierating, only: [:show, :edit, :update, :destroy]

  # GET /movieratings
  # GET /movieratings.json
  def index
    @movieratings = Movierating.all.paginate(page: params[:page], per_page: 10)
  end

  # GET /movieratings/1
  # GET /movieratings/1.json
  def show
  end

  # GET /movieratings/new
  def new
    @movierating = Movierating.new
  end

  # GET /movieratings/1/edit
  def edit
  end

  # POST /movieratings
  # POST /movieratings.json
  def create
    @movierating = Movierating.new(movierating_params)

    respond_to do |format|
      if @movierating.save
        format.html { redirect_to @movierating, notice: 'Movierating was successfully created.' }
        format.json { render :show, status: :created, location: @movierating }
      else
        format.html { render :new }
        format.json { render json: @movierating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movieratings/1
  # PATCH/PUT /movieratings/1.json
  def update
    respond_to do |format|
      if @movierating.update(movierating_params)
        format.html { redirect_to @movierating, notice: 'Movierating was successfully updated.' }
        format.json { render :show, status: :ok, location: @movierating }
      else
        format.html { render :edit }
        format.json { render json: @movierating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movieratings/1
  # DELETE /movieratings/1.json
  def destroy
    @movierating.destroy
    respond_to do |format|
      format.html { redirect_to movieratings_url, notice: 'Movierating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movierating
      @movierating = Movierating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movierating_params
      params.require(:movierating).permit(:movieratingid, :themovieid, :rating, :name)
    end
end
