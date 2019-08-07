# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeding..."

Flat.destroy_all

10.times do
  flats = Flat.create!({
    name: Faker::FunnyName.four_word_name,
    address: Faker::Address.street_name,
    description: Faker::Marketing.buzzwords,
    price_per_night: %w(65 80 83 89 90 95 100 110 120 130).sample,
    number_of_guest: %w(1 2 3 4).sample
  })
end

puts "Done"
