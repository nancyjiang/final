class Hashtag < ActiveRecord::Base
	has_many :hashtag_photos
	has_many :photos, through: :hashtag_photos
end
