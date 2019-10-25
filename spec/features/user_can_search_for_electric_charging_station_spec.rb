require 'rails_helper'

describe "user can search for an electric charging station" do
  scenario 'user can search for electric fuel stations' do
    visit '/'
    select 'Turing', from: :location
    click_on "Find Nearest Station"
    expect(current_path).to eq("/search")

    attrs = {
      name: "Electric Station",
      address: "123 17th St Denver CO",
      fuel_type: "Electric",
      distance: "0.1",
      access_time: "5"
    }

    station = Station.new(attrs)
    # expect(page).to have_css(".station")
    # Then I should see the closest electric fuel station to me.

    expect(page).to have_content(station.name)
    expect(page).to have_content(station.address)
    expect(page).to have_content(station.fuel_type)
    expect(page).to have_content(station.distance)
    expect(page).to have_content(station.access_time)

  end
end

#
# I should also see:
# - the distance of the nearest station
# - the travel time from Turing to that fuel station (should be 0.1 miles)
# - The HTML direction instructions to get to that fuel station
#   "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"
