class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized

  def index
    @bookings = policy_scope(Booking).order(created_at: :asc)
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @family = Family.find(params[:family_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.family = @family
    if @booking.save
      redirect_to family_booking_path(@family, @booking)
    else
      render "families/show"
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to root_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:price, :number_guests, :status, :family_id, :user_id, :start_date, :end_date)
  end
end
