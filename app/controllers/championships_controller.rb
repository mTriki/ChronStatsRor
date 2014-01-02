class ChampionshipsController < ApplicationController
  before_action :set_championship, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate

  # GET /championships
  def index
    @championships = Championship.all
  end

  # GET /championships/1
  def show
  end

  # GET /championships/new
  def new
    @championship = Championship.new
  end

  # GET /championships/1/edit
  def edit
  end

  # POST /championships
  def create
    @championship = Championship.new(championship_params)

    if @championship.save
      redirect_to @championship, notice: 'Championship was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /championships/1
  def update
    if @championship.update(championship_params)
      redirect_to @championship, notice: 'Championship was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /championships/1
  def destroy
    @championship.destroy
    redirect_to championships_url, notice: 'Championship was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_championship
      @championship = Championship.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def championship_params
      params.require(:championship).permit(:name, :federation_id, :season_id)
    end
end
