# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database....'
Restaurant.destroy_all

puts 'Creating Restaurants...'
winey_cow = {name: 'Winey Cow', address: '1 Mornington Street, Mornington', category: 'french', phone_number: '123489874'}
doppio = {name: 'Doppio Pizzeria', address: '2 CoolStores Street, Mt Eliza', category: 'italian', phone_number: '9584 67 93 2'}
merchant_maker = {name: "Merchant and Maker", address: "1  Nepean Hwy, McCrea", category: "belgian", phone_number: "9575 09 74 3"}
the_bay = {name: "The Bay", address: "5 Mornington Street, Mornington", category: "chinese", phone_number: "9483 01 39 4"}
le_pointu = {name: "Le Pointu", address: "10 Riponne Street, Lausanne", category: "french", phone_number: "3927 48 57 3"}
doki_doki = {name: "Doki Doki", address: "23 Ours Route, Lausanne", category: "japanese", phone_number: "6583 43 67 8"}

[winey_cow, doppio, merchant_maker, the_bay, le_pointu, doki_doki].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
