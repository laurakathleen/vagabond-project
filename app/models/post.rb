class Post < ApplicationRecord
	belongs_to :user
	belongs_to :city
	validates :post_title, length: {minimum: 1, maximum: 200}
	validates :post_content, presence: true
end
