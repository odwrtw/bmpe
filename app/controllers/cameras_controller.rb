class CamerasController < ApplicationController
  before_action :set_camera, only: [:show, :edit, :update, :destroy]
  before_action :set_experiment, except: [:index]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # GET /cameras
  # GET /cameras.json
  def index
    @cameras = Camera.all
  end

  # GET /cameras/1
  # GET /cameras/1.json
  def show
    if user_signed_in?
      @pics = @camera.pics
    else
      @pics = @camera.pics.where(validated: true)
    end
  end

  # GET /cameras/new
  def new
    @camera = Camera.new
  end

  # GET /cameras/1/edit
  def edit
  end

  # POST /cameras
  # POST /cameras.json
  def create
    @camera = Camera.new(camera_params)

    respond_to do |format|
      if @camera.save
        format.html { redirect_to experiment_camera_url(@experiment, @camera), notice: 'Camera was successfully created.' }
        format.json { render :show, status: :created, location: @camera }
      else
        format.html { render :new }
        format.json { render json: @camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cameras/1
  # PATCH/PUT /cameras/1.json
  def update
    respond_to do |format|
      if @camera.update(camera_params)
        format.html { redirect_to experiment_camera_url(@experiment, @camera), notice: 'Camera was successfully updated.' }
        format.json { render :show, status: :ok, location: @camera }
      else
        format.html { render :edit }
        format.json { render json: @camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cameras/1
  # DELETE /cameras/1.json
  def destroy
    @camera.destroy
    respond_to do |format|
      format.html { redirect_to experiment_url(@experiment), notice: 'Camera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera
      @camera = Camera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camera_params
      params.require(:camera).permit(:number, :experiment_id)
    end

    def set_experiment
      unless @camera
        @experiment = Experiment.find(params[:experiment_id])
        return
      end
      if @camera.experiment
        @experiment = @camera.experiment
      end
    end
end
