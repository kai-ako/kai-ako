require 'rails_helper'

RSpec.describe Booking, type: :model do
  it "A booking belongs to a topic" do
  	# Arrange

  		booking1 = Booking.create 
  		# Make a New Booking

  		topic1 = Topic.create
  		# Make a new topic

  	# Act
  		topic1.bookings << booking1 
  		# Associate Booking w/ topic

  	# Assert
  		expect(topic1.bookings.last).to eq(booking1) 
  		# Check that we can find booking by topic 

  end





end
