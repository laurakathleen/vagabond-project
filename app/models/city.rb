class City < ApplicationRecord
	has_many :posts, dependent: :destroy
end
