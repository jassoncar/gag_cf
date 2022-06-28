class UssersController < ApplicationController
  before_action :set_usser, only: %i[ show edit update destroy ]

  # GET /ussers or /ussers.json
  def index
    @ussers = Usser.all
  end

  # GET /ussers/1 or /ussers/1.json
  def show
  end

  # GET /ussers/new
  def new
    @usser = Usser.new
  end

  # GET /ussers/1/edit
  def edit
  end

  # POST /ussers or /ussers.json
  def create
    @usser = Usser.new(usser_params)

    respond_to do |format|
      if @usser.save
        format.html { redirect_to usser_url(@usser), notice: "Usser was successfully created." }
        format.json { render :show, status: :created, location: @usser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ussers/1 or /ussers/1.json
  def update
    respond_to do |format|
      if @usser.update(usser_params)
        format.html { redirect_to usser_url(@usser), notice: "Usser was successfully updated." }
        format.json { render :show, status: :ok, location: @usser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ussers/1 or /ussers/1.json
  def destroy
    @usser.destroy

    respond_to do |format|
      format.html { redirect_to ussers_url, notice: "Usser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usser
      @usser = Usser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usser_params
      params.require(:usser).permit(:nombre, :password, :email, :bio, :programa, :birthday, :work_time)
    end
end
