class BookingsController < ApplicationController

  def index
    @booking= Bookings.all
  end

  def create
    @booking= Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
      render :show, status: :created, location: @booking
    else
      render :new
    end
  end

  def update

  end

  def new
    @booking=Bookings.new
  end

  def booking_params
    params.require(:booking).permit(:date, :accepted, :note)
  end

end