class UsersController < ApplicationController
	def index 
		@users = User.all
	end

	def show 
		@user = User.find_by(id: params["id"])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

   		respond_to do |format|
			if @user.save
				format.html { redirect_to @user }
			else
				format.html { render :new }
				
			end
		end
	end

	def edit
		@user = User.find_by(id: params["id"])
	end

	def update
		@user = User.find_by(id: params["id"])

   		respond_to do |format|
			if @user.update(params[:user])
				format.html { redirect_to @user }
			else
				format.html { render :new }
				
			end
		end
	end

	def destroy
		@user = User.find_by(id: params["id"])
	    @user.destroy
		redirect_to users_url
	end

end
