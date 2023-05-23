class BookingsController < ApplicationController
  before_action :set_outfit, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.outfit = @outfit
    @booking.save
    if @booking.save
      redirect_to outfit_path(@outfit)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to outfit_path(@booking.outfit), status: :see_other
  end

  private

  def set_outfit
    @outfit = Outfit.find(params[:outfit_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :total_price)
  end
end
