class Article < ApplicationRecord
	has_one_attached :image
	#has_one_attached :file
	belongs_to :user
end
