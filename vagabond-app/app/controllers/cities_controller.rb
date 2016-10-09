class CitiesController < ApplicationController
  def index
  	@cities = City.all
  end

  def show
    @city = City.find_by(url_display: params[:city_url_display])
    @posts = @city.posts
  end

  def new
  end
end
