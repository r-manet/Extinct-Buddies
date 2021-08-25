class BookingsController < ApplicationController
  before_action :set_booking, only: :show

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = @user.id
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
