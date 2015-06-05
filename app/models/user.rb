class User < ActiveRecord::Base
	validates :name, presence: true
  	validates :email, presence: true
  	validates :password, presence: true
  	has_secure_password
  	
	has_many :photos
	has_many :likes


end
