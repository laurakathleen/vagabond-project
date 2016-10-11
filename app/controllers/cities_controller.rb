class CitiesController < ApplicationController
  def create
    # city_params[:url_display] = city_params[:city_name].parameterize(separator: '-')
    @city = City.new(city_params)
    @city.url_display = @city.city_name.parameterize(separator: '-')
    @city.save
    redirect_to '/cities/' + @city.url_display
  end

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
    if @city.posts.count < 10
      @posts = @city.posts
    elsif @city.posts.count > (@page.to_i * 10) + 10
    	@posts = @city.posts.all.order(:created_at)[(0 + (10 * @page.to_i))...(10 + (10 * @page.to_i))]
    else
    	@posts = @city.posts.all.order(:created_at)[(-10..-1)]
    end
  end

  def new
    @city = City.new
  end

  private
  def city_params
    params.require(:city).permit(:city_name, :url_display, :image_url)
  end
end
