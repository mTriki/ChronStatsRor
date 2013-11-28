class FederationsController < ApplicationController
  before_action :set_federation, only: [:show, :edit, :update, :destroy]

  # GET /federations
  def index
    @federations = Federation.all
  end

  # GET /federations/1
  def show
  end

  # GET /federations/new
  def new
    @federation = Federation.new
  end

  # GET /federations/1/edit
  def edit
  end

  # POST /federations
  def create
    @federation = Federation.new(federation_params)

    if @federation.save
      redirect_to @federation, notice: 'Federation was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /federations/1
  def update
    if @federation.update(federation_params)
      redirect_to @federation, notice: 'Federation was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /federations/1
  def destroy
    @federation.destroy
    redirect_to federations_url, notice: 'Federation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_federation
      @federation = Federation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def federation_params
      params.require(:federation).permit(:name, :logo)
    end
end
