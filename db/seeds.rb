# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
un = { name: 'pinzutti', address: '34 rue Marcadet', phone_number: '01 86 78 44 56', category: 'italian' }
deux = { name: 'Gros Bao', address: 'Canal Saint Martin', phone_number: '06 56 45 89 76', category: 'chinese' }
trois = { name: 'Le brio', address: '65 rue Marcadet', phone_number: '01 82 70 44 59', category: 'french' }
quattre = { name: 'Kunitoraya', address: '34 rue Villedo', phone_number: '07 56 43 21 67', category: 'japanese' }
cinq = { name: 'Mamma Roma', address: '38 rue Oberkampf', phone_number: '07 65 22 10 96', category: 'italian' }

[un, deux, trois, quattre, cinq].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
