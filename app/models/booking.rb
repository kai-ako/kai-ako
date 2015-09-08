class Booking < ActiveRecord::Base
	belongs_to :topic
	validates :occurs_on, presence: true
end
