# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Hello from seeds.rb"
User.destroy_all
Post.destroy_all
City.destroy_all
City.create(city_name: 'San Francisco')
City.create(city_name: 'London')
City.create(city_name: 'Gibraltar')
# test = User.create({first_name: 'test', last_name: 'test', email: 'test@test.com', password: 'test', current_city: 'testing city', home_city: 'testing city', favorite_city: 'testing city'})
# test_post = Post.create({post_title: "Test Title", post_content: 'Test content'})


users_data = []
posts_data = []
	
10.times do 
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

for user_data in users_data
	new_user = User.create(user_data)
	5.times do
		new_user.posts << Post.create({
			post_title: FFaker::HipsterIpsum.word,
			post_content: "#{FFaker::HipsterIpsum.paragraph}"*5,
			user_id: new_user.id,
			city_id: City.first.id
		})
	end
	3.times do
		new_user.posts << Post.create({
			post_title: FFaker::HipsterIpsum.word,
			post_content: "#{FFaker::HipsterIpsum.paragraph}"*8,
			user_id: new_user.id,
			city_id: City.second.id
		})
	end
	2.times do
		new_user.posts << Post.create({
			post_title: FFaker::HipsterIpsum.word,
			post_content: "#{FFaker::HipsterIpsum.paragraph}"*8,
			user_id: new_user.id,
			city_id: City.third.id
		})
	end
	new_user.save
end
p "created #{User.count} users, and #{City.count} cities, with a total post count of #{Post.count}"
# users = User.create(users_data)
# posts = Post.create(posts_data)

