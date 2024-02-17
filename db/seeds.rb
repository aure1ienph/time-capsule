# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: 'dev1@example.com', password: 'password', first_name: 'User', last_name: 'One', avatar: 'avatar1.png')
User.create!(email: 'dev2@example.com', password: 'password', first_name: 'User', last_name: 'Tow', avatar: 'avatar2.png')
User.create!(email: 'dev3@example.com', password: 'password', first_name: 'User', last_name: 'Three', avatar: 'avatar3.png')
User.create!(email: 'dev4@example.com', password: 'password', first_name: 'User', last_name: 'Four', avatar: 'avatar4.png')

# 3.times do |i|
#   Capsule.create!(name: "Capsule #{i + 1}", user: user1)
# end

# 2.times do |i|
#   Capsule.create!(name: "Capsule #{i + 1}", user: user2)
# end

# 4.times do |i|
#   Capsule.create!(name: "Capsule #{i + 1}", user: user3)
# end

# 2.times do |i|
#   Capsule.create!(name: "Capsule #{i + 1}", user: user4)
# end
