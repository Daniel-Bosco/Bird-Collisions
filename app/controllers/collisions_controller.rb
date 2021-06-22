class CollisionsController < ApplicationController
  before_action :set_collision, only: %i[ show edit update destroy ]
  load_and_authorize_resource

  # GET /collisions or /collisions.json
  def index
    @collisions = Collision.all
    @collisions = @collisions.where(bird_id: params[:bird_id]) unless params[:bird_id].blank?
    @collisions = @collisions.page(params[:page] || 1)
  end

  # GET /collisions/1 or /collisions/1.json
  def show
  end

  # GET /collisions/new
  def new
    @collision = Collision.new
  end

  # GET /collisions/1/edit
  def edit
  end

  # POST /collisions or /collisions.json
  def create
    @collision = Collision.new(collision_params)

    respond_to do |format|
      if @collision.save
        format.html { redirect_to @collision, notice: "Collision was successfully created." }
        format.json { render :show, status: :created, location: @collision }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collisions/1 or /collisions/1.json
  def update
    respond_to do |format|
      if @collision.update(collision_params)
        format.html { redirect_to @collision, notice: "Collision was successfully updated." }
        format.json { render :show, status: :ok, location: @collision }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collisions/1 or /collisions/1.json
  def destroy
    @collision.destroy
    respond_to do |format|
      format.html { redirect_to collisions_url, notice: "Collision was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collision
      @collision = Collision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collision_params
      params.require(:collision).permit(:bird_id, :datum_id)
    end
end
