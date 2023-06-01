class BookingsController < ApplicationController
  before_action :set_outfit, only: %i[new create]

  def index
    @bookings = Booking.all
    @user = current_user
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.outfit = @outfit
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@booking)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to owner_path(@booking), status: :see_other
  end

  def owner
    @bookings = Booking.all
    @user = current_user
  end

  private

  def set_outfit
    @outfit = Outfit.find(params[:outfit_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :total_price)
  end
end
