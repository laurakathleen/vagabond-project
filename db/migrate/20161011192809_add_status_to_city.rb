class AddStatusToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :status, :string
  end
end
