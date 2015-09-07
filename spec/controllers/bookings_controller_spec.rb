require 'rails_helper'

RSpec.describe BookingsController, type: :controller do

	describe 'get #index' do
		before {create_list(:booking, 11)}
		it 'shows 10 items' do
			get :index
			expect(assigns(:bookings).size).to eq(10)
		end
	end
	describe 'get #new'
	describe 'get #edit'
	describe 'get #show'
	describe 'post #create' do
		let(:booking) {build(:booking)}
		let(:post_booking) {post :create, booking: booking}

		it 'save booking in database' do
			expect { post_booking }.to change {Booking.count}
		end
		it 'redirects to index page' do
			post_booking
			expect(response).to redirect_to(bookings_path)
		end
	end
	describe 'put #update' 
	describe 'delete #destroy' 
end
