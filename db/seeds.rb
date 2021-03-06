# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

5.times do
  Flat.create!(
    name: 'A place to live',
    address: Faker::Address.full_address,
    description: Faker::Restaurant.review,
    price_per_night: Faker::Number.between(from: 65, to: 150),
    number_of_guests: Faker::Number.between(from: 2, to: 7)
  )
end
