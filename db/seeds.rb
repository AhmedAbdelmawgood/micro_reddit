# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def title
	'General' + Faker::Hipster.sentence(3, true, 4)
end
def paragraph_create
	Faker::Hipster.paragraph(2, true, 4)
end
=begin
22.times do 
	password = Faker::Internet.password
	email = Faker::Internet.free_email
	User.create(name:Faker::Name.name,password:password, password_confirmation:password,email:email, email_confirmation:email,username:Faker::Name.name, age:18, gender:'male' ,country:'Egypt')
end
5.times do |num|
	x = ['Economics', 'Sports', 'Politics', 'Education', 'General']
	Categorie.create(name: x[num])
end
=end
100.times do 
	Post.create(title: title, body:paragraph_create, user_id:rand(22), category_id:5)
end