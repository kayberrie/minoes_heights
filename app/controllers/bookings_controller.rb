class BookingsController < ApplicationController

  def index
    @bookings= Bookings.all
  end

  def create
    @bookings= Booking.new(booking_params)
  end

  def update

  end

  def new
    @bookings=Bookings.new
  end

  def booking_params
    params.require(:booking).permit(:date, :accepted, :note)
  end

end