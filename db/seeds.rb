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

alphina = Animal.create!({
  description: "With a beautiful plumage, Alphina will rob you dry",
  price: 231_000,
  species: "Raphus cucullatus",
  category: "Dodo",
  name: "Alphina ",
  requirement: "Only eats watermelons",
  age_ago: 231,
  user: user_array.sample,
  habitat: "land",
  location: "Mauritius",
  image: "https://static.wikia.nocookie.net/iceage/images/7/76/Dab.png"
})

constantinople= Animal.create!({
  description: "Constantinople is a sleepy boy, don't let him nap on your roof!",
  price: 500_920,
  species: "Diplodocus longus",
  category: "Dinosaur",
  name: "Constantinople",
  requirement: "Mansions owner recomended",
  age_ago: 145_000_000,
  user: user_array.sample,
  habitat: "plains and forests",
  location: "Buckingham Palace",
  image: "https://static1.funidelia.com/238382-f4_big/inflatable-diplodocus-costume-for-adults-.jpg"
})

rufus = Animal.create!({
  description: "Surprinsingly, Rufus is a genius in mathematics!",
  price: 40_104,
  species: "Thylacinus cynocephalus",
  category: "Tasmanian Tiger",
  name: "Rufus ",
  requirement: "A fat toothbrush",
  age_ago: 85,
  user: user_array.sample,
  habitat: "forests and grasslands",
  location: "Paris",
  image: "https://museumsvictoria.com.au/media/6015/tasmanian-tiger.jpg"
})

manny = Animal.create!({
  description: "A bit of a grump,",
  price: 20_000,
  species: "Elephas primigenius",
  category: "Mammoth",
  name: "Manny",
  requirement: "Peace and quiet",
  age_ago: 10_000,
  user: user_array.sample,
  habitat: "land",
  location: "New York",
  image: "https://static.wikia.nocookie.net/bstudios/images/0/05/Manny.png"
})

scrat= Animal.create!({
  description: "Has a slight obsession for acorns ",
  price: 2,
  species: "Cronopio dentiacutus",
  category: "Saber-toothed squirrel",
  name: "Scrat",
  requirement: "Have a acorn for him, if you don't want a untimely disaster",
  age_ago: 96_000_000,
  user: user_array.sample,
  habitat: "land",
  location: "Tokyo",
  image: "https://i.pinimg.com/originals/f5/85/c5/f585c57624be7f0c44436ac00afb44d6.png"
})

diego = Animal.create!({
  description: "Looks rough, but is a nice fella",
  price: 200_759,
  species: "Smilodon populator",
  category: "Saber-tooth tiger",
  name: "Diego",
  requirement: "A human baby",
  age_ago: 12_000,
  user: user_array.sample,
  habitat: "Mountains",
  location: "Rio de Janeiro",
  image: "https://www.seekpng.com/png/detail/318-3182901_diego1-diego-ice-age.png"
})

puts 'Finished!'
