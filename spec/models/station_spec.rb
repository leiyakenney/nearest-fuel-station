require "rails_helper"

describe Station do
  it "exists" do
    attrs = {
      name: "ElectroFuel",
      address: "123 Wynkoop St Denver CO",
      fuel_type: "Electric",
      distance: "0.1"
    }

    station = Station.new(attrs)

    expect(station).to be_a Station
    expect(station.name).to eq("ElectroFuel")
    expect(station.address).to eq("123 Wynkoop St Denver CO")
    expect(station.fuel_type).to eq("Electric")
    expect(station.distance).to eq("0.1")
  end
end
