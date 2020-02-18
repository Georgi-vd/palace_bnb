require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Palace.destroy_all

puts 'Creating user'
user = User.create!(email: 'bob@bob.com', password: 'xxxxxxxx')
puts 'Creating palaces...'
20.times do
  palace = Palace.new(
    name: Faker::Superhero.name,
    description: Faker::Lorem.sentence,
    price: Faker::Number.leading_zero_number(digits: 10),
    location: Faker::Address.country,
    user: user
  )
  palace.save!
end
puts 'Finished!'
