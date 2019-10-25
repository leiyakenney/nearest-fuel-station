class ClosestStationFacade
  def initialize(address)
    @address = address
  end

  def station
    conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=1771+17th+St+Denver+CO&limit=1")
    top_station_data = JSON.parse(response.body, symbolize_names: true)
    top_station_data
    # binding.pry
  end
  #facade.station[:fuel_stations][:station_name] = name
  #facade.station[:fuel_stations][:street_address] = address
  #facade.station[:fuel_stations][:city] = city
  #facade.station[:fuel_stations][:state] = state
  #facade.station[:fuel_stations][:zip] = zip
  #facade.station[:fuel_stations][:distance] = distance


  private
  attr_reader :address
end
