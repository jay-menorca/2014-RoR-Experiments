class PhotosController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy 
	
	def new
		@photo = Photo.new
	end

	def index
		@photos = Photo.all
	end

	def create
		@photo = Photo.new(photo_params)

		if @photo.save
			redirect_to @photo
		else
			render 'new'
		end
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])

		if @photo.update(photo_params)
			redirect_to @photo
		else
			render 'edit'
		end
	end

	def destroy
		@photo = Photo.find(params[:id])

		@photo.destroy

		redirect_to photoss_path
	end

	
	private
	def photo_params
		params.require(:article).permit(:name, :url)
	end

end
