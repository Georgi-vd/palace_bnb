require 'faker'
require "open-uri"

puts 'Cleaning database...'
Palace.destroy_all
puts 'Destroying user'
User.destroy_all

puts 'Creating user'
user = User.create!(email: 'em.em@pal.com', password: '123456x')
user_1 = User.create!(email: 'h.mori@gmail.com', password: '123456x')
user_2 = User.create!(email: 'georgi4@me.com', password: '123456x')
user_3 = User.create!(email: 'hugo.palace@palace.ch', password: '123456x')
user_4 = User.create!(email: 'uhuhu@pal.com', password: '123456x')


puts 'Creating palaces...'

file_1 = URI.open('https://images.unsplash.com/photo-1511437104182-eaac70da49b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1356&q=80')
palace_1 = Palace.new(name: "Palais Magique", description: "Sublime palais avec vue sur les alpes", price: 2000, location: "Chemin de Pra Michaud 14, 1936 Bagnes", user: user)
palace_1.photos.attach(io: file_1, filename: 'nes.jpeg', content_type: 'image/jpeg')
palace_1.save!


file_2 = URI.open('https://images.unsplash.com/photo-1526816229784-65d5d54ac8bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
palace_2 = Palace.create!(name: "Palais Potager", description: "Au milieu de la verdure, impréssionnant!", price: 8764, location: "Hameau Penti, 20230 Santa-Reparata-di-Moriani, France", user: user_1)
palace_2.photos.attach(io: file_2, filename: 'potager.jpeg', content_type: 'image/jpeg')
palace_2.save!


file_3 = URI.open('https://images.unsplash.com/photo-1547211453-719b1bdec5f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
palace_3 = Palace.create!(name: "Arabian Nights Palace", description: "Overwhelming", price: 54367, location: "Calle Camoens, 5, 51001 Ceuta, Spain", user: user_2)
palace_3.photos.attach(io: file_3, filename: 'nights.jpeg', content_type: 'image/jpeg')
palace_3.save!


file_4 = URI.open('https://images.unsplash.com/photo-1505210040014-1ceda028476d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1450&q=80')
palace_4 = Palace.create!(name: "Deluxe", description: "Ideal pour des vacances ultraluxe", price: 2097855, location: "Piazza del Colosseo, 1, 00184 Roma RM, Italy", user: user_3)
palace_4.photos.attach(io: file_4, filename: 'deluxe.jpeg', content_type: 'image/jpeg')
palace_4.save!


file_5 = URI.open('https://images.unsplash.com/photo-1539223583194-b66100fa7273?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
palace_5 = Palace.create!(name: "Carribbean Dream", description: "Impréssionante bâtisse au bord de l'eau", price: 7854, location: "One Bay St, Nassau, Bahamas", user: user_4)
palace_5.photos.attach(io: file_5, filename: 'dream.jpeg', content_type: 'image/jpeg')
palace_5.save!



file_6 = URI.open('https://images.unsplash.com/photo-1524397057410-1e775ed476f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
palace_6 = Palace.create!(name: "Snowflake Castle", description: "Au milieu des alpes Italiennes", price: 4532, location: "Via Milano, 50, 23032 Bormio SO, Italy", user: user)
palace_6.photos.attach(io: file_6, filename: 'snow.jpeg', content_type: 'image/jpeg')
palace_6.save!

file_7 = URI.open('https://images.unsplash.com/photo-1561928932-248c3263a62a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2475&q=80')
palace_7 = Palace.create!(name: "Magnificient Island", description: "Ile magique, aventures et repos", price: 8675644, location: "Megali Ammos, 846 00, Greece", user: user_1)
palace_7.photos.attach(io: file_7, filename: 'island_2.jpeg', content_type: 'image/jpeg')
palace_7.save!


file_8 = URI.open('https://images.unsplash.com/photo-1516091877740-fde016699f2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80')
palace_8 = Palace.create!(name: "Wakatomi Island", description: "Vue imprenable", price: 74534252, location: "Jl. Sarinande No.22, Seminyak, Kuta, Kabupaten Badung, Bali 80361, Indonesia", user: user_2)
palace_8.photos.attach(io: file_8, filename: 'island_3.jpeg', content_type: 'image/jpeg')
palace_8.save!

puts 'Finished!'

# Palace.create!(name: "palace-test", description: "pretty", price: 2000, location: "9 route de Malagny, 1294 Genthod", user: user)


