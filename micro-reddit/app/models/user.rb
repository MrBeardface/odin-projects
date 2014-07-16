class User < ActiveRecord::Base
	has_many :posts
	has_many :comments

	validates :name, presence: true
	validates :name, length: { maximum: 15}

	validates :email, confirmation: true

end
