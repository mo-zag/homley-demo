# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Clear existing data (Optional: only use in development environment)
Comment.destroy_all
Project.destroy_all
User.destroy_all

# Create Users
user1 = User.create!(name: "Alice", email: "alice@example.com", password: "password123")
user2 = User.create!(name: "Bob", email: "bob@example.com", password: "password123")
user3 = User.create!(name: "Charlie", email: "charlie@example.com", password: "password123")

puts "Created #{User.count} users."

# Create Projects
project1 = Project.create!(name: "Build a Website", description: "A project to build a company website", status: 1)
project2 = Project.create!(name: "Mobile App", description: "Develop a mobile app for e-commerce", status: 1)
project3 = Project.create!(name: "Marketing Campaign", description: "Design and launch a new marketing campaign", status: 2)

puts "Created #{Project.count} projects."

# Create Comments
Comment.create!(content: "This project is coming along well!", user: user1, project: project1)
Comment.create!(content: "Looking forward to seeing the results.", user: user2, project: project1)
Comment.create!(content: "Are we on track for the launch?", user: user1, project: project2)
Comment.create!(content: "Great job team!", user: user3, project: project3)

puts "Created #{Comment.count} comments."
