class FederationsController < ApplicationController
  # GET /federations
  # GET /federations.json
  def index
    @federations = Federation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @federations }
    end
  end

  # GET /federations/1
  # GET /federations/1.json
  def show
    @federation = Federation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @federation }
    end
  end

  # GET /federations/new
  # GET /federations/new.json
  def new
    @federation = Federation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @federation }
    end
  end

  # GET /federations/1/edit
  def edit
    @federation = Federation.find(params[:id])
  end

  # POST /federations
  # POST /federations.json
  def create
    @federation = Federation.new(params[:federation])

    respond_to do |format|
      if @federation.save
        format.html { redirect_to @federation, notice: 'Federation was successfully created.' }
        format.json { render json: @federation, status: :created, location: @federation }
      else
        format.html { render action: "new" }
        format.json { render json: @federation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /federations/1
  # PUT /federations/1.json
  def update
    @federation = Federation.find(params[:id])

    respond_to do |format|
      if @federation.update_attributes(params[:federation])
        format.html { redirect_to @federation, notice: 'Federation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @federation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /federations/1
  # DELETE /federations/1.json
  def destroy
    @federation = Federation.find(params[:id])
    @federation.destroy

    respond_to do |format|
      format.html { redirect_to federations_url }
      format.json { head :no_content }
    end
  end
end
