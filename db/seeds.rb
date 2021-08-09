# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
user = User.new(name: Faker::JapaneseMedia::DragonBall.character, email: Faker::Internet.email, password: '123123')
user.save || next
end

puts "create#{User.count} users!"

20.times do
recognition = Recognition.new(description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
recognition.recognizer = User.all.sample
recognition.recognized = User.all.sample
recognition.save || next
puts "#{recognition.recognizer.name} wrote #{recognition.description} to #{recognition.recognized.name}"
end