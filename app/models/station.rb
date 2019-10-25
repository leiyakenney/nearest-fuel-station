class Station
  attr_reader :name, :address, :fuel_type, :distance

  def initialize(station)
    # binding.pry
    @name = station[:name]
    @address = station[:address]
    @fuel_type = station[:fuel_type]
    @distance = station[:distance]
  end
end
