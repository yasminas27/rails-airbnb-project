class FamiliesController < ApplicationController

  def index
    # TO DO: modify to only display search results
    @families = Family.all
  end

  def show
    @family = Family.find(params[:id])
  end

  def search_form
    @family = Family.new
  end

  def search
    raise
  end
end
