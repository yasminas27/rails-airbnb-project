class FamiliesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # TO DO: modify to only display search results
    price_pppn = params[:price]to_i/params[:night].to_i/params[:capacity].to_i
    @families = Family.where(price_pppn: =< price_pppn, capacity: params[:capacity])
  end

  def show
    @family = Family.find(params[:id])
  end


end
