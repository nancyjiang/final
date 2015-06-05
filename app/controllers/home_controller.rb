class HomeController < ApplicationController
	skip_before_action :auth
	def index
		if !current_user.nil?
			redirect_to photos_url
		else
			render :index
		end
	end
end
