class BookingsController < ApplicationController

	def index
		@bookings = Booking.all.limit(10)
		render text: ''
	end
	def create
		Booking.create(params[:booking])
		redirect_to bookings_path
	end
end
