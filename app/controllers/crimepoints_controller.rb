class CrimepointsController < ApplicationController
	def index

	end

	def show

		location = params[:search]
		@latlng = Crimepoint.geolocation(location)
    @lat = @latlng[0].round(3)
    @lng = @latlng[1].round(3)

    @queried_crimepoint = Crimepoint.find_by(latitude: @lat, longitude: @lng)

		# @all_crimepoints = Crimepoint.return_crimepoints.to_json
		# render json: @all_crimepoints
	end

end
