class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /flights or /flights.json
  def index
    @flights = Flight.all
    @flights = @flights.where(aircraft_id: params[:aircraft_id]) unless params[:aircraft_id].blank?
    @flights = @flights.where(pilot_id: params[:pilot_id]) unless params[:pilot_id].blank?
    @flights = @flights.where(id: params[:flight_id]) unless params[:flight_id].blank?
    @flights = @flights.page(params[:page] || 1)
  end

  # GET /flights/1 or /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights or /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to new_report_path, notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1 or /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to @flight, notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1 or /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.require(:flight).permit(:aircraft_id, :pilot_id)
    end
end
