class SearchController < ApplicationController
  def index
    @characters = SearchFacade.get_character_by_affiliation(params[:nation].sub("_", " "))
  end
end
