class AddFavoriteCityToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :favorite_city, :string
  end
end
