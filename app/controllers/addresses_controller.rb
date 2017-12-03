class AddressesController < ApplicationController
  def index
    
  end

  def show

  end

  def create
    @address = current_user.address.create(address_params)
    if @address.save
      redirect_to address_path
    else
      render :new
    end
  end 

  def new
    @address = Address.new
  end

  def edit
    

  end

  def destroy

  end 


  private
  def set_address
    @address = current_user.address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street, :city, :state, :zip)
  end 

end
