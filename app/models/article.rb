class Article < ApplicationRecord
	validates :title, presence: true

	before_save :check_title


	def check_title
		return title.length < 20
	end
end
