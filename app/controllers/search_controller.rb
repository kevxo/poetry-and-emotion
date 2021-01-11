class SearchController < ApplicationController
  def index
    @authors = SearchFacade.authors(params[:author], 10)
  end
end