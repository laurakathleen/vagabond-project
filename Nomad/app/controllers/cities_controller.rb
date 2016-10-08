class CitiesController < ApplicationController
  def index
  end

  def show
    @city = City.find_by_id(params[:id])
    @posts = @city.posts
  end

  def new
  end
end
