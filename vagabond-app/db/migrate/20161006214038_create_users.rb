class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :current_city
      t.datetime :date
      t.has_many :posts

      t.timestamps
    end
  end
end
