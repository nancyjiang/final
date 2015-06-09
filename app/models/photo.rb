class Photo < ActiveRecord::Base
	attr_accessor :iamge
	belongs_to :user
	has_many :likes
	has_many :hashtag_photos
	has_many :hashtags, through: :hashtag_photos

	accepts_nested_attributes_for :hashtags

	mount_uploader :image, PhotoUploader

end