class ImagesController < ApplicationController
  before_filter :require_user
  def index
    @title = "All images"
    @images = Image.all
  end
  
  def new
    @title = "New image"
    @image = Image.new
  end
  
  def create
    @image = Image.new(params[:image])
    if @image.save
      redirect_to me_path
    else
      flash[:error] = @image.errors.on(:url)
      render :action=>:new
    end
  end
  
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

end
