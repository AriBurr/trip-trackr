class TripsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trip, only: [:show, :edit, :update, :destroy, :find_location, :add_location, :remove_location]

  def index
    @trips = current_user.trips
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.create(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render 'edit'
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end


  def find_location
    @locations = Location.find_location_not_on_trip
  end

  def add_location
    @location = Location.find(params[:format])
    @location.update(trip_id: params[:id])
    redirect_to trip_path(@trip)
  end

  def remove_location
    @location = Location.find(params[:trip_id])
    @location.update(trip_id: nil)
    redirect_to trip_path(@trip)
  end

  private

  def set_trip
    @trip = current_user.trips.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :date_start, :date_end, :image, :desc)
  end

end
