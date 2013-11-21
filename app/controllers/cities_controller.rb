class CitiesController < ApplicationController
  # GET /cities
  # GET /cities.json
  def index
    @cities = Cities.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cities }
    end
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @cities = Cities.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cities }
    end
  end

  # GET /cities/new
  # GET /cities/new.json
  def new
    @cities = Cities.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cities }
    end
  end

  # GET /cities/1/edit
  def edit
    @cities = Cities.find(params[:id])
  end

  # POST /cities
  # POST /cities.json
  def create
    @cities = Cities.new(params[:cities])

    respond_to do |format|
      if @cities.save
        format.html { redirect_to @cities, notice: 'cities was successfully created.' }
        format.json { render json: @cities, status: :created, location: @cities }
      else
        format.html { render action: "new" }
        format.json { render json: @cities.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.json
  def update
    @cities = Cities.find(params[:id])

    respond_to do |format|
      if @cities.update_attributes(params[:cities])
        format.html { redirect_to @cities, notice: 'cities was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cities.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @cities = cities.find(params[:id])
    @cities.destroy

    respond_to do |format|
      format.html { redirect_to cities_url }
      format.json { head :no_content }
    end
  end
end
