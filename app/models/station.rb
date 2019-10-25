class Station
  attr_reader :station_name, :address, :fuel_type, :distance

  def initialize(station)
    @name = station[:fuel_stations][:station_name]
    @address = station[:fuel_stations][:address]
    @fuel_type = station[:fuel_stations][:fuel_type]
    @distance = station[:fuel_stations][:distance]
  end
end
