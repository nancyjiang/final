class HashtagPhoto < ActiveRecord::Base
	belongs_to :hashtag 
	belongs_to :photo
end

