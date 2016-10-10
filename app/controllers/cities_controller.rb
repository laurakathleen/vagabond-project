class CitiesController < ApplicationController
  def index
  	@cities = City.all
  end

  def show
    @city = City.find_by(url_display: params[:city_url_display])
    if params[:page]
      @page = params[:page]
    else
      @page = 1
    end
    if @city.posts.count > (@page.to_i * 10) + 10
    	@posts = @city.posts.all.order(:created_at)[(0 + (10 * @page.to_i))...(10 + (10 * @page.to_i))]
    else
    	@posts = @city.posts.all.order(:created_at)[(-10..-1)]
    end
  end

  def new
  end
end
