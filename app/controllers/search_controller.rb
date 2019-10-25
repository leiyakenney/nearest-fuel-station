class SearchController < ApplicationController
  def index
    render locals: {
      facade: ClosestStationFacade.new(params[:address])
    }
  end
end
