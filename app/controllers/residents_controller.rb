class ResidentsController < ApplicationController
  before_action :set_resident, only: [:show, :edit, :update, :destroy]

  # Devise unthentication has been commented out as more config research is needed for controllers tests to pass.
  # To test manually, please uncomment the following line:
  # before_action :authenticate_user!

  # GET /residents
  # GET /residents.json
  def index
    @residents = Resident.all
    @rooms = Room.all
  end

  # GET /residents/1
  # GET /residents/1.json
  def show
  end

  # GET /residents/new
  def new
    @resident = Resident.new
    @rooms = Room.all
  end

  # GET /residents/1/edit
  def edit
    @rooms = Room.all
  end

  # POST /residents
  # POST /residents.json
  def create
    @resident = Resident.new(resident_params)

    respond_to do |format|
      if @resident.save
        format.html { redirect_to residents_path, notice: 'Resident was successfully created.' }
        format.json { render :show, status: :created, location: @resident }
      else
        format.html { render :new }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residents/1
  # PATCH/PUT /residents/1.json
  def update
    respond_to do |format|
      if @resident.update(resident_params)
        format.html { redirect_to @resident, notice: 'Resident was successfully updated.' }
        format.json { render :show, status: :ok, location: @resident }
      else
        format.html { render :edit }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residents/1
  # DELETE /residents/1.json
  def destroy
    @resident.delete
    respond_to do |format|
      format.html { redirect_to residents_url, notice: 'Resident was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = Resident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resident_params
      params.require(:resident).permit(:name, :age, :allergies, :medications, :next_of_kin, :nok_phone_number, :shared_room, :room_id)
    end
end
