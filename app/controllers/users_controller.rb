
class UsersController < ApplicationController
	skip_before_action :auth, only: [:new, :create]

	def index 
		@users = User.all
	end

	def show 
		@user = current_user
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params["user"])
		if @user.valid?
		 	redirect_to user_path(@user)
		else
		 	render "new"
		end
	end

	def edit
		@user = current_user
	end

	def update
	    @user = current_user
	    @user.update(params["user"])
	    redirect_to users_path
  	end

	def destroy
		@user = current_user
	    @user.destroy
		redirect_to users_path
	end

end
