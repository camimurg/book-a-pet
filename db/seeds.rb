# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pet.destroy_all

puts "Creating users"

user1 = User.create!(email: "pa@gmail.com", password: "123456")

puts "Users created"

puts "Creating pets"

Pet.create!(name: "Feijao", species: "cat", address: "Prenz Allee 6", city: "Berlin", description: "I am a very lovely and playful black cat. Come play with me! I will jump in your keyboard!", user: user1)

puts "Pets created"


# Pet.create(name: "Shiva", species: "dog", address: "Le Wagon 1", city: "Berlin" , description: "Thomas's cheerful dog that likes cookies and coding with us.")
