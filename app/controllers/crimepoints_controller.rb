class CrimepointsController < ApplicationController
	def index

	end

	def show

		@location = params[:search]
		@latlng = Crimepoint.geolocation(@location)
		@all_crimepoints = Crimepoint.return_crimepoints
		
		render json: @all_crimepoints
	end

end
