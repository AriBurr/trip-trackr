class TripsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = current_user.trips
  end

  def show
  end

  def new
    @trip = current_user.trips.create(trip_params)
  end

  def create
  end

  def edit
  end

  def update
  end 

  def destroy
  end 

  private

  def set_trip
    @trip = current_user.trips.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :date_start, :date_end)
  end 

end
