# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do |i|
	Concert.create(band: Faker::Hacker.abbreviation, city: Faker::Address.city, venue: Faker::Book.title, date: Faker::Date.forward(23), price: Faker::Number.number(2), description: Faker::Lorem.sentence )
end
