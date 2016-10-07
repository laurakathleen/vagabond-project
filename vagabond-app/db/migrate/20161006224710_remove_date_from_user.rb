class RemoveDateFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :date, :datetime
  end
end
