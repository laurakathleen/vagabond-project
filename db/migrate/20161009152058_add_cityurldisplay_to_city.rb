class AddCityurldisplayToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :url_display, :string
  end
end
