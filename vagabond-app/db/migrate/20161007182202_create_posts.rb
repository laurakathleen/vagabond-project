class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, optional: true
      t.belongs_to :city, optional: true
      t.string :post_title
      t.text :post_content

      t.timestamps
    end
  end
end
