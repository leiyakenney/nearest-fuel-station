class StationSearchResults
  def initialize

  end

  def closest_station
    conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=1771+17th+St+Denver+CO&fuel_type=ELEC&limit=1")

    station_search_data = JSON.parse(response.body, symbolize_names: true)[:results]

    station_search_data
  end
end
