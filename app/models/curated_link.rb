class CuratedLink < ActiveRecord::Base
	validates :link, presence: true

end
