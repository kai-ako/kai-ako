class Booking < ActiveRecord::Base
	belongs_to :topic
	#validates :date, presence: true
end
