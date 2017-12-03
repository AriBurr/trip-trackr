class LocationsController < ApplicationController
before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @trip = Trip.find(params[:trip_id])
    if @location.save
      redirect_to trip_path(@trip, @location)
    else
      render :new
    end
  end 

  def edit
  end

  def update
  end 

  def destroy
  end 

  private

  def set_location
    @location = Location.find(params[:id])
  end 

  def location_params
    params.require(:location).permit(:name)
  end 

end
