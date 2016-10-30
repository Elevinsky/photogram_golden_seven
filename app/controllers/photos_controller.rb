class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def create_row
  p = Photo.new
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.save
  redirect_to("/photos")
  end

  def destroy
    photo = Photo.find_by({ :id => params[:id] })
    photo.destroy
    redirect_to("/photos")
  end
end
