class Crimepoint < ApplicationRecord

	def self.geolocation(address)
		response = HTTParty.post('https://maps.googleapis.com/maps/api/geocode/json?address=' + address + '&key=AIzaSyD_lgSf_Boe4qAFQh5fpsW-FyeKdswYyS4')
		lat = response['results'][0]['geometry']['location']['lat']
		lng = response['results'][0]['geometry']['location']['lng']
		latlng = [lat, lng]

	end

end
