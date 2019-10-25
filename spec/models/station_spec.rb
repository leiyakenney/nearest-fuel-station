require "rails_helper"

describe Station do
  it "exists" do
    attrs = {
      name: "Electric Station",
      address: "123 17th St Denver CO",
      fuel_type: "Electric",
      distance: "0.1",
      access_time: "5"
    }

    station = Station.new(attrs)

    expect(station).to be_a Station
    expect(station.name).to eq("Electric Station")
    expect(station.address).to eq("123 17th St Denver CO")
    expect(station.fuel_type).to eq("Electric")
    expect(station.distance).to eq("0.1")
    expect(station.access_time).to eq("5")
  end
end
