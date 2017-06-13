class PinsController < ApplicationController
  def index
  end

  def new
    @pin = Pin.new
  end
  
  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to pins_path
    else
      render :new
    end
  end

  private
  
  def pin_params
    params.require(:pin).permit(:title, :lat, :lng)
  end
end
