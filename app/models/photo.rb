class Photo < ActiveRecord::Base
	belongs_to :user
	has_many :likes
	has_many :hashtag_photos
	has_many :hashtags, through: :hashtag_photos
end
