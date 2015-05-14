class PhotosController < ApplicationController
	def index 
		@photos = Photo.all
	end

	def show 
		@photo = Photo.find_by(id: params["id"])
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(params[:photo])

   		respond_to do |format|
			if @photo.save
				format.html { redirect_to @photo }
			else
				format.html { render :new }
				
			end
		end
	end

	def edit
		@photo = Photo.find_by(id: params["id"])
	end

	def update
		@photo = Photo.find_by(id: params["id"])

   		respond_to do |format|
			if @photo.update(params[:photo])
				format.html { redirect_to @photo }
			else
				format.html { render :new }
				
			end
		end
	end

	def destroy
		@photo = Photo.find_by(id: params["id"])
	    @photo.destroy
		redirect_to photos_url
	end
end
