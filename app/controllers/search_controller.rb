class SearchController < ApplicationController
  def index
    render locals: {
      facade: StationSearchResults.new
    }
  end
end
