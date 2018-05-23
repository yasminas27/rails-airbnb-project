class FamiliesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_family, only: [:show, :edit, :update, :destroy]
  # skip_after_action :verify_authorized,only: [:new, :show]

  def index
    price_pppn = ((params[:price]to_i) / params[:night].to_i) / params[:capacity].to_i
    families_results = Family.where(price_pppn: =< price_pppn, capacity: params[:capacity])
    @families = policy_scope(families_results).order(created_at: :desc)
  end

  def show
  end

  def new
    @family = Family.new
    authorize @family
  end

  def create
    @family = Family.new(family_params)
    @family.user = current_user
    authorize @family
    if @family.save
      redirect_to family_path(@family)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @family.update(family_params)
      redirect_to family_path(@family)
    else
      render :edit
    end
  end

  def destroy
    @family.destroy
    redirect_to root_path
  end

  def search_form
    @family = Family.new
  end

  private

  def set_family
    @family = Family.find(params[:id])
    authorize @family
  end

  def family_params
    params.require(:family).permit(:name, :description, :capacity, :price_pppn, :photo)
  end

end
