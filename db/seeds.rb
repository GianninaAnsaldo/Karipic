# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

karina = User.create(
  name: "Karina",
  email: 'karina@example.com',
  password: 'password123',
  role: :karina
)

  puts "Karina ha sido creada con éxito!" if karina.persisted?


#10.times do
#    Photo.create(name: Faker::Movies::HarryPotter.character, location: Faker::Movies::HarryPotter.location, house: Faker::Movies::HarryPotter.house)
#end