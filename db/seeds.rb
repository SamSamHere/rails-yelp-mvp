# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning stuff out'
Restaurant.destroy_all

puts 'creating new restaurants...'
le_one_nighter = { name: 'Le One Nighter', address: '123th CBD', category: 'chinese' }
tinder_surprise = { name: 'Tinder Surprise', address: '75th Wharf Road', category: 'japanese'}
east_red_light = { name: 'East Red Light', address: '25th Corner Street', category: 'french'}
gone_wild = { name: 'Gone Wild', address: '789th South Road', category: 'chinese'}
motel_and_waffles = { name: 'Motel and Waffles', address: '345th North Road', category: 'french'}


[le_one_nighter, tinder_surprise, east_red_light, gone_wild, motel_and_waffles].each do |item|
  new_restaurant = Restaurant.create!(item)
  puts "Created new entries"
end

puts "Done"
