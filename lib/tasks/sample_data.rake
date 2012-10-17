namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do


		10.times do |n|
			name = Faker::Name.name
			Topic.create!(name: name)
		end

		# admin = User.first
		# admin.toggle!(:admin)

		# users = User.all(limit: 6)
		# 50.times do
		# 	content = Faker::Lorem.sentence(5)
		# 	users.each { |user| user.microposts.create!(content: content) }
		# end


		# users = User.all
		# user = users.first
		# followed_users = users[2..50]
		# followers 	   = users[3..40]
		# followed_users.each { |followed| user.follow!(followed) }
		# followers.each 	    { |follower| follower.follow!(user) }


	end
end
