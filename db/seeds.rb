# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Appointment.destroy_all
Pet.destroy_all
User.destroy_all


puts "Creating users"

user1 = User.create!(email: "pato@gmail.com", password: "123456")

puts "Users created"

puts "Creating pets"

pet = Pet.create(name: "Mr. Papagallo", species: "Bird", address: "Segitzdamm 40", city: "Berlin", description: "Hi! I am an exotic amazonic bird from Peru. Come meet me before I get extinct!", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605794029/papagallo.jpg")
pet.picture.attach(io: picture, filename: "papagallo.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Sorello", species: "Dog", address: "Strasse 16", city: "Hamburg", description: "Hello! I would love to meet you. Let's go play!", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605794652/perrito.jpg")
pet.picture.attach(io: picture, filename: "perrito.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Santo", species: "Hamster", address: "Prenzlauer Berg 666", city: "Berlin", description: "Hi! I am a little guy from Colombia. My favorite word is Yara.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793596/ham.jpg")
pet.picture.attach(io: picture, filename: "ham.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Sapo", species: "Frog", address: "Tempelhof 1", city: "Hamburg", description: "Hello there! I am a South American cute frog. I promise I am not poisonous. Want to play?", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793606/sapo.jpg")
pet.picture.attach(io: picture, filename: "frog.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Dali", species: "Dog", address: "Yarayara 21", city: "Berlin", description: "I am a Spanish Dog living in Berlin. I love eating ice cream!", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793326/dali.jpg")
pet.picture.attach(io: picture, filename: "dali.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Burocracia", species: "Turtle", address: "Calle 298", city: "Berlin", description: "Come meet me! And please bring some lettuce.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793328/buro.jpg")
pet.picture.attach(io: picture, filename: "buro.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Mimmo", species: "Cat", address: "Boddhinstrasse 14", city: "Bonn", description: "Hey there! I would love to meet you. I speak English and Italian.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793599/mimo.jpg")
pet.picture.attach(io: picture, filename: "mimo.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Zeus", species: "Rabbit", address: "Olimpo 1", city: "Berlin", description: "I don't have any friends. Would you come play with me? I am very friendly.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793601/ra.jpg")
pet.picture.attach(io: picture, filename: "ra.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Feijão", species: "Cat", address: "Brazil Strasse 3", city: "Berlin", description: "Good morning, humans! I am a very cute and sweet cat. You should come meet me and Bruna, my best friend.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793596/fei.jpg")
pet.picture.attach(io: picture, filename: "fei.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Anacondo", species: "Snake", address: "Anaconda Strasse 90", city: "Bonn", description: "Hi! How are you? I love playing around people and eating small rats.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605793603/anacondo.jpg")
pet.picture.attach(io: picture, filename: "anacondo.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Nemo", species: "Fish", address: "Pacific Ocean 467", city: "Berlin", description: "Come swim with me!", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605796675/nemo.jpg")
pet.picture.attach(io: picture, filename: "nemo.jpg", content_type: "image/jpg")

pet = Pet.create(name: "Pirata", species: "Dog", address: "Le Wagon strasse 22", city: "Hamburg", description: "Hi! I a very special dog. I love playing and eating socks.", user: user1)

picture = URI.open("https://res.cloudinary.com/dylgxsntq/image/upload/v1605796662/pi.jpg")
pet.picture.attach(io: picture, filename: "pi.jpg", content_type: "image/jpg")

puts "Pets created"



# pet = Pet.create!(name: "Shiva", species: "Dog", address: "Prenz Allee 6", city: "Berlin", description: "I am a very lovely and playful crazy dog. Come play with me! I will jump in your keyboard!", user: user1)

# picture = URI.open("https://picsum.photos/id/237/200/300")
# pet.picture.attach(io: picture, filename: "Picture.jpeg", content_type: "image/jpeg")




# picture = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1605793300/papagallo.jpg')

# pet.picture.attach(io: file, filename: 'papagallo.jpg', content_type: 'image/jpg')


