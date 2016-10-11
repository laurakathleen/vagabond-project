module SessionsHelper
  @@city_id = nil
  @@post_id = nil
  def login(user)
    session[:user_id] = user.id

    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def setCityId(city_id)
    @@city_id = city_id
  end

  def getCityId
    @@city_id
  end

  def setPostId(post_id)
    @@post_id = post_id
  end

  def getPostId
    @@post_id
  end
end
