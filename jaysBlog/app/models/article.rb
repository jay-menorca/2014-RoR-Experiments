class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :photos

	validates :title, presence: true, uniqueness: true,
		length: {minimum: 3}
end
