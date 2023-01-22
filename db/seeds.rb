# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

## Start Seeds ##

## User Seeds ##

User.destroy_all

u1 = User.create!(
    name: "admin",
    email: "admin@ctool.com",
    password_digest: "chicken",
    admin: true

)

puts "####### Creating Users ########"
puts "I have created #{User.count} users."
puts "The names of the users I have created are: #{User.pluck(:name).join(', ')}."

## Year Seeds ##

