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
puts "####### Creating Users ########"

u1 = User.create!(
    name: "admin",
    email: "admin@ctool.com",
    password_digest: "chicken",
    admin: true

)

puts "I have created #{User.count} users."
puts "The names of the users I have created are: #{User.pluck(:name).join(', ')}."

## Year Seeds ##

puts "\n####### Creating Year Levels ########"
Year.destroy_all

y0 = Year.create!(
    label: "Foundation",
    year: 0,
    is_band:  false
)

puts "I have created #{Year.count} year levels."
puts "The names of the year levels I have created are: #{Year.pluck(:label).join(', ')}."

## Learning Areas Seeds ###

puts "\n#### Creating Learning Areas ####"

LearningArea.destroy_all

l_a1 = LearningArea.create!(
    name: "English",
    subject: "English"
)

puts "I have created #{LearningArea.count} Learning Areas."
puts "The names of the Learning Areas I have created are: #{LearningArea.pluck(:name).join(', ')}."


## GeneralCapabilities Seeds



General_Capabilitie.destroy_all

puts "\n#### Creating General Capabilities####"

gc1 = GeneralCapabilities.create!(
    text: "Literacy"
)

puts "I have created #{GeneralCapabilities.count} General Capabilities."
puts "The General Capabilities  I have created are: #{GeneralCapabilities.pluck(:text).join(', ')}."