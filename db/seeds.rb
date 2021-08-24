# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Animal.destroy_all

puts 'Creating Users...'

raph = User.create!({
  email: "raph@lewagon.com",
  name: "Raph",
  password: "111111"
})
raph.save

manuela = User.create!({
  email: "manuela@lewagon.com",
  name: "Manuela",
  password: "121212"
})
manuela.save

user_array = %w(manuela raph)

puts 'Creating Animals...'

alphina = Animal.create!({
  description: "With a beautiful plumage, Diego will rob you dry",
  price: 231_000,
  species: "Raphus cucullatus",
  category: "Dodo",
  name: "Alphina",
  requirement: "Only eats watermelons",
  age_ago: 231,
  user: user_array.sample,
  habitat: "land",
  location: "Mauritius",
})
alpina.save

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
})
constantinople.save

rufus = Animal.create!({
  description: "Surprinsingly, Rufus is a genius in mathematics!",
  price: 40_104,
  species: "Thylacinus cynocephalus",
  category: "Tasmanian Tiger",
  name: "Rufus",
  requirement: "A fat toothbrush",
  age_ago: 85,
  user: user_array.sample,
  habitat: "forests and grasslands",
  location: "Paris",
})
rufus.save

manny = Animal.create!({
  description: "A bit of a grump",
  price: 20_000,
  species: "Elephas primigenius",
  category: "Mammoth",
  name: "Manny",
  requirement: "Peace and quiet",
  age_ago: 10_000,
  user: user_array.sample,
  habitat: "land",
  location: "New York",
})
manny.save

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
  location: "tokyo",
})
scrat.save

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
})
diego.save

puts 'Finished!'
