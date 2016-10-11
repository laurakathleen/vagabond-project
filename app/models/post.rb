class Post < ApplicationRecord
	belongs_to :user
	belongs_to :city
	has_many :comments, dependent: :destroy
	validates :post_title, length: {minimum: 1, maximum: 200}
	validates :post_content, length: {minimum: 1}
end
