class BookratingsController < ApplicationController
  before_action :set_bookrating, only: [:show, :edit, :update, :destroy]

  # GET /bookratings
  # GET /bookratings.json
  def index
    @bookratings = Bookrating.all
  end

  # GET /bookratings/1
  # GET /bookratings/1.json
  def show
  end

  # GET /bookratings/new
  def new
    @bookrating = Bookrating.new
  end

  # GET /bookratings/1/edit
  def edit
  end

  # POST /bookratings
  # POST /bookratings.json
  def create
    @bookrating = Bookrating.new(bookrating_params)

    respond_to do |format|
      if @bookrating.save
        format.html { redirect_to @bookrating, notice: 'Bookrating was successfully created.' }
        format.json { render :show, status: :created, location: @bookrating }
      else
        format.html { render :new }
        format.json { render json: @bookrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookratings/1
  # PATCH/PUT /bookratings/1.json
  def update
    respond_to do |format|
      if @bookrating.update(bookrating_params)
        format.html { redirect_to @bookrating, notice: 'Bookrating was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookrating }
      else
        format.html { render :edit }
        format.json { render json: @bookrating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookratings/1
  # DELETE /bookratings/1.json
  def destroy
    @bookrating.destroy
    respond_to do |format|
      format.html { redirect_to bookratings_url, notice: 'Bookrating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookrating
      @bookrating = Bookrating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookrating_params
      params.require(:bookrating).permit(:bookratingid, :thebookid, :rating, :name)
    end
end
