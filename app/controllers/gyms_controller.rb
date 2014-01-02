class GymsController < ApplicationController
  before_action :set_gym, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate


  # GET /gyms
  def index
    @gyms = Gym.all
  end

  # GET /gyms/1
  def show
  end

  # GET /gyms/new
  def new
    @gym = Gym.new
  end

  # GET /gyms/1/edit
  def edit
  end

  # POST /gyms
  def create
    @gym = Gym.new(gym_params)

    if @gym.save
      redirect_to @gym, notice: 'Gym was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /gyms/1
  def update
    if @gym.update(gym_params)
      redirect_to @gym, notice: 'Gym was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /gyms/1
  def destroy
    @gym.destroy
    redirect_to gyms_url, notice: 'Gym was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      @gym = Gym.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gym_params
      params.require(:gym).permit(:name, :adress, :zip, :city, :federation_id)
    end


end
