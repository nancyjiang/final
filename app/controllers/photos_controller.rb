class PhotosController < ApplicationController
	skip_before_action :auth, only: [:show, :index]
	def index

		@photos = params[:q].nil? ? Photo.all : Photo.joins(:hashtags).where(hashtags:{name: params[:q]})
	end

	def show
		@photo = Photo.includes(:user).find_by(id: params["id"])
	end

	def vote
		@photo = Photo.find_by(id: params["id"])
		@user = current_user
		@like = Like.find_or_create_by(photo_id: @photo.id, user_id: @user.id)

		@like.save
		redirect_to photos_path

	end

	def new
		@photo = Photo.new
		3.times { @photo.hashtags.build}
	end

	def create
		hashtags_attribute = params[:photo][:hashtags_attributes]
		params[:photo].delete("hashtags_attributes")
		@photo = Photo.new(params[:photo])

		hashtags_attribute.each do |key, attributes|
			if attributes[:name] != ""
				hashtag = Hashtag.find_or_create_by(name: attributes[:name])
				@photo.hashtags << hashtag
			end
		end

		@photo.user = current_user

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

