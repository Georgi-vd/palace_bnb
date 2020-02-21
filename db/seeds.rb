require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database...'
# Palace.destroy_all
# puts 'Destroying user'
# User.destroy_all

# puts 'Creating user'
user = User.create!(email: 'bob@bobb.com', password: 'xxxxxrxxx')
# puts 'Creating palaces...'
# 20.times do
#   palace = Palace.new(
#     name: Faker::Superhero.name,
#     description: Faker::Lorem.sentence,
#     price: Faker::Number.leading_zero_number(digits: 10),
#     location: Faker::Address.full_address,
#     user: user
#   )
#   palace.save!
# end
# puts 'Finished!'

# Palace.create!(name: "palace-test", description: "pretty", price: 2000, location: "9 route de Malagny, 1294 Genthod", user: user)
Palace.create!(name: "Palais Magique", description: "Magnificent", price: 2000, location: "23 Redcliffe Road, SW10 9NJ London", user: user)
Palace.create!(name: "Palais Potager", description: "Sublime", price: 2000, location: "43 rue la Sinne 68100 Mulhouse", user: user)
Palace.create!(name: "Arabian Nights Palace", description: "Overwhelming", price: 2000, location: "Chemin de la Moraine 31 1162 St Prex", user: user)
Palace.create!(name: "Deluxe", description: "Ideal", price: 2000, location: "Route du Jorat 82, 1000 Lausanne 26", user: user)
Palace.create!(name: "Carribbean Dream", description: "Awesome", price: 2000, location: "7a Rue du Général de Gaule 68510 Esetten", user: user)
Palace.create!(name: "Snowflake Castle", description: "Fantastic", price: 2000, location: "3 rue Herold 75001 Paris", user: user)

