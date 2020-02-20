# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  sub = Sub.create(name:Faker::Artist.name)
  15.times do
    sub.topics.create(name:Faker::Movies::StarWars.character, body:Faker::GreekPhilosophers.quote)
  end
  
end

# Sub.create(name:'React')
# Sub.create(name:'Animals')
# Sub.create(name:'Javascript')
# Sub.create(name:'HTML')
# Sub.create(name:'CSS')
# Sub.create(name:'Angular JS')
# Sub.create(name:'Rails')
