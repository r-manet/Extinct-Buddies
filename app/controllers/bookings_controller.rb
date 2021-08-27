class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :create]

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.user = current_user
    if @booking.save
      # redirect_to animal_booking_path(@animal, @booking)
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def user_index
    @bookings = Booking.where(user: current_user)
  end

  private

  def set_booking
    @animal = Animal.find(params[:animal_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_time)
  end
end
