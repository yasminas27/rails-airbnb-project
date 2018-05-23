class FamiliesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_family, only: [:show, :edit, :update, :destroy]
  # skip_after_action :verify_authorized,only: [:new, :show]

  def index
    if params[:family][:night].empty? && params[:family][:price].empty? && params[:family][:capacity].empty?
      families_results = Family.all
    elsif params[:family][:night].present? && params[:family][:price].present? && params[:family][:capacity].present?
      nights = params[:family][:night].to_i
      price = params[:family][:price].to_i
      capacity = params[:family][:capacity].to_i
      price_per_night = price.fdiv(nights)
      price_per_person = price_per_night.fdiv(params[:family][:capacity].to_i)
      families_results = Family.where("price_pppn <= ? AND capacity >= ?", price_per_person, capacity)
    else
      families_results = Family.all
    end
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


  private

  def set_family
    @family = Family.find(params[:id])
    authorize @family
  end

  def family_params
    params.require(:family).permit(:name, :description, :capacity, :price_pppn, :photo)
  end

end
