class AddressesController < ApplicationController
  before_action :find_location

  def index
  end

  def show
  end

  def new
    @address = Address.new
  end

  def create
    @address = @location.addresses.new(address_params)
    if @address.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end


  private
  def find_location
    @location = Location.find(params[:location_id])
  end

  def address_params
    params.require(:address).permit(:street, :city, :state, :zip)
  end

end
