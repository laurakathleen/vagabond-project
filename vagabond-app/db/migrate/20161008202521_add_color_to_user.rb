class AddColorToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :color_profile, :string
  end
end
