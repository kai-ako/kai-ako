class Topic < ActiveRecord::Base
	has_many :bookings
	has_many :children, class_name: "Topic",
						foreign_key: "parent_id"

	belongs_to :parent, class_name: "Topic"

end
