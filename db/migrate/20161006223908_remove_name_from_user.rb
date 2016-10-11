class RemoveNameFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    remove_column :users, :date, :datetime
    add_column :users, :home_city, :string
    add_column :users, :favorite_city, :string
    add_column :users, :color_profile, :string
    add_column :cities, :url_display, :string
    add_column :users, :admin, :boolean
    add_column :cities, :status, :string
  end
end
