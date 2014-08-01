class WelcomeController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    # THINGS
    @image = Image.new
  end

  def create
    # THINGS
  end
end
