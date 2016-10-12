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
User.create(first_name: 'Testy', last_name: 'McTesterson')

City.create(status: 'approved', city_name: 'San Francisco', url_display: 'san-francisco', image_url: "https://static.pexels.com/photos/28184/pexels-photo-28184.jpg")
City.create(status: 'approved', city_name: 'London', url_display: 'london', image_url: "https://static.pexels.com/photos/50632/pexels-photo-50632.jpeg")
City.create(status: 'approved', city_name: 'Gibraltar', url_display: 'gibraltar', image_url: "http://i68.tinypic.com/2806zao.jpg")

# test = User.create({first_name: 'test', last_name: 'test', email: 'test@test.com', password: 'test', current_city: 'testing city', home_city: 'testing city', favorite_city: 'testing city'})
# test_post = Post.create({post_title: "Test Title", post_content: 'Test content'})


users_data = []
posts_data = []
	
100.times do 
	first_name = FFaker::Name.first_name
	last_name = FFaker::Name.last_name
	users_data << {
		first_name: first_name,
		last_name: last_name,
		email: "#{first_name}@#{last_name}.com",
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
			post_content: "#{FFaker::HipsterIpsum.paragraph}" + "#{FFaker::HipsterIpsum.paragraph}" + "#{FFaker::HipsterIpsum.paragraph}"+ "#{FFaker::HipsterIpsum.paragraph}"+ "#{FFaker::HipsterIpsum.paragraph}",
			user_id: new_user.id,
			city_id: City.first.id
		})
	end
	3.times do
		new_user.posts << Post.create({
			post_title: FFaker::HipsterIpsum.word,
			post_content: "#{FFaker::HipsterIpsum.paragraph}" + "#{FFaker::HipsterIpsum.paragraph}" + "#{FFaker::HipsterIpsum.paragraph}"+ "#{FFaker::HipsterIpsum.paragraph}"+ "#{FFaker::HipsterIpsum.paragraph}",
			user_id: new_user.id,
			city_id: City.second.id
		})
	end
	2.times do
		new_user.posts << Post.create({
			post_title: FFaker::HipsterIpsum.word,
			post_content: "#{FFaker::HipsterIpsum.paragraph}" + "#{FFaker::HipsterIpsum.paragraph}" + "#{FFaker::HipsterIpsum.paragraph}"+ "#{FFaker::HipsterIpsum.paragraph}"+ "#{FFaker::HipsterIpsum.paragraph}",
			user_id: new_user.id,
			city_id: City.third.id
		})
	end
	new_user.save
end
p "created #{User.count} users, and #{City.count} cities, with a total post count of #{Post.count}"

