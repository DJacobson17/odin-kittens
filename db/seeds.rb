# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Kitten.destroy_all

name = [
  'Saddam Hussein',
  'Saddam Husseins best friend',
  'Chairman Meow',
  'Notorious C.A.T.',
  'Mr. Bigglesworth',
  'Catticus Finch',
  'Pancake',
  'Cleveland Cataliers',
  'Isaac Meowton',
  'Winston Furchill'
]

15.times do 
  Kitten.create(
    name: name.sample,
    age: rand(1..15),
    cuteness: rand(1..10),
    softness: rand(1..10)
  )
end