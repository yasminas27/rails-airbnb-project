class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :edit, :update, :destroy]
  # skip_after_action :verify_authorized,only: [:new, :show]

  def index
    # TO DO: modify to only display search results
    @families = policy_scope(Family).order(created_at: :desc)
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

  private

  def set_family
    @family = Family.find(params[:id])
    authorize @family
  end

  def family_params
    params.require(:family).permit(:name, :description, :capacity, :price_pppn)
  end
end
