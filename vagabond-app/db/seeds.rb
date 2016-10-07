# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Hello from seeds.rb"
test = User.create({first_name: 'test', last_name: 'test', email: 'test@test.com', password: 'test', current_city: 'testing city', home_city: 'testing city', favorite_city: 'testing city'})
User.destroy_all

users_data = []
	
10.times do 
	p "Are you working?"
	p users_data
	users_data << {
		first_name: FFaker::Name.first_name,
		last_name: FFaker::Name.last_name,
		email: FFaker::Internet.safe_email,
		password: 'test',
		current_city: FFaker::Address.city,
		home_city: FFaker::Address.city,
		favorite_city: FFaker::Address.city
	}
end	


users = User.create(users_data)
