class StationSearchResults
  def initialize
    @name = name
    @address = address
    @fuel_type = fuel_type
    @distance = distance
    @access_time = access_time
  end

  def stations
    conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/congress/v1/members/house/#{state}/current.json")

    JSON.parse(response.body, symbolize_names: true)[:results]
  end
end
