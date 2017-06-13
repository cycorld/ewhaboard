class PinsController < ApplicationController
  def index
  end

  def new
    @pin = Pin.new
  end
end
