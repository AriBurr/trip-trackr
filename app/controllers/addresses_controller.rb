class AddressesController < ApplicationController
  before_action :set_location

  def index
  end

  def show
    locations = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = @location.build_address(address_params)
    if @address.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if address.update(address_params)
      redirect_to location_path(@location)
    else
      render :edit
    end
  end

  def destroy
  end


  private
  def set_location
    @location = Location.find(params[:location_id])
  end

  def address_params
    params.require(:address).permit(:street, :city, :state, :zip, :longitude, :latitude)
  end

end
