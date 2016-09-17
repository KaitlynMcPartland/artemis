class CrimepointsController < ApplicationController
  def index
    puts "Hello World"
  end

  def show

  	@location = params[:search]
  	latlong = Crimepoint.geolocation(@location)

  end

end
