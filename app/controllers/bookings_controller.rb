class BookingsController < ApplicationController

  def index
    @bookings = Booking.all.limit(10)
  end
  def create
    @booking = Booking.create(params[:booking])
    redirect_to bookings_path
  end

  def edit
    @editable_booking =  Booking.find params[:id]
  end
end
