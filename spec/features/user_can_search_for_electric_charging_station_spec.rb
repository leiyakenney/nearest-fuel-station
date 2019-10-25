require 'rails_helper'

describe "user can search for an electric charging station" do
  scenario 'user can search for electric fuel stations' do
    # As a user
    visit '/'
    # When I visit "/"
    select 'Turing', from: :location
    # And I select "Turing" form the start location drop down (Note: Use the existing search form)
    click_on "Find Nearest Station"
    # And I click "Find Nearest Station"
    expect(current_path).to eq("/search")
    # Then I should be on page "/search"
    # Then I should see the closest electric fuel station to me.
    #

  end
end

# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Distance
# - Access Times
#
# I should also see:
# - the distance of the nearest station
# - the travel time from Turing to that fuel station (should be 0.1 miles)
# - The HTML direction instructions to get to that fuel station
#   "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"
