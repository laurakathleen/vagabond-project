class City < ApplicationRecord
	has_many :posts
	def initialize
		url_display = :city_name.parameterize(separator: '-')
	end
end
