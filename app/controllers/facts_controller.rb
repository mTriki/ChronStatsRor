class FactsController < ApplicationController
  # GET /facts
  # GET /facts.json
  def index
    @facts = fact_type.all
    @title = fact_type

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facts }
    end
  end

  # GET /facts/1
  # GET /facts/1.json
  def show
    @fact = Fact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fact }
    end
  end

  # GET /facts/new
  # GET /facts/new.json
  def new
    #@fact_type = fact_type
    @fact = fact_type.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fact }
    end
  end

  # GET /facts/1/edit
  def edit
    @fact = fact_type.find(params[:id])
  end

  # POST /facts
  # POST /facts.json
  def create

    @fact = fact_type.new(params[:fact])

    respond_to do |format|
      if @fact.save
        format.html { redirect_to @fact, notice: 'Fact was successfully created.' }
        format.json { render json: @fact, status: :created, location: @fact }
      else
        format.html { render action: "new" }
        format.json { render json: @fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facts/1
  # PUT /facts/1.json
  def update
    @fact = Fact.find(params[:id])

    respond_to do |format|
      if @fact.update_attributes(params[:fact])
        format.html { redirect_to @fact, notice: 'Fact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facts/1
  # DELETE /facts/1.json
  def destroy
    @fact = Fact.find(params[:id])
    @fact.destroy

    respond_to do |format|
      format.html { redirect_to facts_url }
      format.json { head :no_content }
    end
  end

  private
  def fact_type
    params[:type].constantize
  end

  def fact_params
      params.require(:fact).permit(:login, :password,:password_confirmation, :club_id)
    end
end
