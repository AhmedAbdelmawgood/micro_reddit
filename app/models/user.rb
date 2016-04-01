koclass User < ActiveRecord::Base
	has_many :posts
	#validation
	REGEX_EMAIL = /\A([\w|\d]\.)+@(yahoo.com|gmail.com)\Z/i
	validates :email, presence: true,
						confirmation: true,
						format: {with: REGEX_EMAIL, message:'invaild form pls online @yahoo.com or @gmail.com'},
						 uniqueness: true 
	validates :username,presence: true, uniqueness: true 
	validates :name, :country, :gender, :country, :username, :age, presence: true
	has_secure_password
end
