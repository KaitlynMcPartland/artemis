class CrimepointsController < ApplicationController
  def index
    puts "Hello World"
  end

  def show

  	@location = params[:search]
  	@latlng = Crimepoint.geolocation(@location)
  	Crimepoint.return_crimepoints

  end

end
