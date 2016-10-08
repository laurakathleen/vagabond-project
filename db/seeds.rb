
User.destroy_all
Post.destroy_all

test = User.create({first_name: 'test', last_name: 'test', email: 'test@test.com', password: 'test', current_city: 'testing city', home_city: 'testing city', favorite_city: 'testing city'})
test_post = Post.create({post_title: "Test Title", post_content: 'Test content'})
p User.first
p Post.first

# users_data = []
# posts_data = []
	
# 10.times do 
# 	users_data << {
# 		first_name: FFaker::Name.first_name,
# 		last_name: FFaker::Name.last_name,
# 		email: FFaker::Internet.safe_email,
# 		password: 'test',
# 		current_city: FFaker::Address.city,
# 		home_city: FFaker::Address.city,
# 		favorite_city: FFaker::Address.city
# 	}
# end	

# 5.times do
# 	p posts_data
# 	posts_data << {
# 		post_title: FFaker::HipsterIpsum.word,
# 		post_content: FFaker::HipsterIpsum.paragraph
# 	}
# end


# users = User.create(users_data)
# posts = Post.create(posts_data)
