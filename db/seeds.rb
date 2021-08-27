# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Animal.destroy_all
User.destroy_all

puts 'Creating Users...'

raph = User.create!({
  email: "raph@lewagon.com",
  name: "Raph",
  password: "111111"
})

manuela = User.create!({
  email: "manuela@lewagon.com",
  name: "Manuela",
  password: "121212"
})

catherine = User.create!({
  email: "catherine@lewagon.com",
  name: "Catherine",
  password: "999999"
})

user_array = [manuela, raph, catherine]

puts 'Creating Animals...'

#FFA700

alphina = Animal.new({
  description: "With a beautiful plumage, Alphina will rob you dry !",
  price: 231_000,
  species: "Raphus cucullatus",
  category: "Dodo",
  name: "Alphina ",
  requirement: "Only eats watermelons",
  age_ago: 231,
  user: user_array.sample,
  habitat: "land",
  location: "Mauritius"
})

puts "alphina on its way "
file = URI.open('https://assets.mycast.io/characters/dodo-594502-normal.jpg')
alphina.photo.attach(io: file, filename: 'alphina.png', content_type: 'image/png')
alphina.save

puts "alphina created!"

roco = Animal.new({
  description: "Roco is a sleepy boy, don't let him nap on your roof!",
  price: 920,
  species: "Diplodocus longus",
  category: "Dinosaur",
  name: "Roco",
  requirement: "Mansions owner recomended",
  age_ago: 145_000_000,
  user: user_array.sample,
  habitat: "plains and forests",
  location: "Buckingham Palace"
})

file = URI.open('https://static1.funidelia.com/238382-f4_big/inflatable-diplodocus-costume-for-adults-.jpg')
roco.photo.attach(io: file, filename: 'roco.png', content_type: 'image/png')
roco.save

puts "roco created!"


rufus = Animal.new({
  description: "Surprinsingly, Rufus is a genius in mathematics!",
  price: 40_104,
  species: "Thylacinus cynocephalus",
  category: "Tasmanian Tiger",
  name: "Rufus ",
  requirement: "A fat toothbrush",
  age_ago: 85,
  user: user_array.sample,
  habitat: "forests and grasslands",
  location: "Paris"
})

file = URI.open('https://static01.nyt.com/images/2021/03/10/science/10sci-tasmaniantiger1/10sci-tasmaniantiger1-superJumbo.jpg')
rufus.photo.attach(io: file, filename: 'rufus.png', content_type: 'image/png')
rufus.save

puts "rufus created!"

manny = Animal.new({
  description: "Manny just wants to be left alone. He's a bit of a grump",
  price: 20_000,
  species: "Elephas primigenius",
  category: "Mammoth",
  name: "Manny",
  requirement: "Peace and quiet",
  age_ago: 10_000,
  user: user_array.sample,
  habitat: "land",
  location: "New York"
})

file = URI.open('https://static.wikia.nocookie.net/parody/images/9/9a/Profile_-_Manny.png')
manny.photo.attach(io: file, filename: 'manny.png', content_type: 'image/png')
manny.save

puts "manny created!"


scrat= Animal.new({
  description: "He may or may not have a slight obsession for acorns... ",
  price: 2,
  species: "Cronopio dentiacutus",
  category: "Saber-toothed squirrel",
  name: "Scrat",
  requirement: "Have an acorn ready for him, if you don't want a untimely disaster",
  age_ago: 96_000_000,
  user: user_array.sample,
  habitat: "land",
  location: "Tokyo"
})

file = URI.open('https://i.pinimg.com/originals/f5/85/c5/f585c57624be7f0c44436ac00afb44d6.png')
scrat.photo.attach(io: file, filename: 'scrat.png', content_type: 'image/png')
scrat.save

puts "scrat created!"


diego = Animal.new({
  description: "He used to a double traitor, but now … he is a nice fella",
  price: 200_759,
  species: "Smilodon populator",
  category: "Saber-tooth tiger",
  name: "Diego",
  requirement: "He has a history of stealing human babies",
  age_ago: 12_000,
  user: user_array.sample,
  habitat: "Mountains",
  location: "Rio de Janeiro"
})

file = URI.open('https://i.pinimg.com/originals/90/cd/f2/90cdf2600ebaaf7ec225d9327b8c69ea.jpg')
diego.photo.attach(io: file, filename: 'diego.png', content_type: 'image/png')
diego.save
puts "diego created!"

puts 'Finished!'
