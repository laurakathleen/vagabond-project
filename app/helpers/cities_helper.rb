module CitiesHelper
  def setCityId(city_id)
    @@city_id = city_id
  end

  def getCityId
    @@city_id
  end
end
