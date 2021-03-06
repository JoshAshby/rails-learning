class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new params[:image]
    @image.save

    redirect_to @image
  end

  def show
    @image = Image.find params[:id]
  end

  def edit
    @image = Image.find params[:id]
  end
end
