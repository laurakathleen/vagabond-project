class AddHomeCityToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :home_city, :string
  end
end
