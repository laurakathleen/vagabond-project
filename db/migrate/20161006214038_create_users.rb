class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :current_city
      t.datetime :date


      t.timestamps
    end
    create_table :cities do |t|
      t.string :city_name
      t.string :image_url
      t.string :gps
      t.integer :post_id

      t.timestamps
    end
    create_table :posts do |t|
      t.belongs_to :user, optional: true
      t.belongs_to :city, optional: true
      t.string :post_title
      t.text :post_content

      t.timestamps
    end
  end
end
