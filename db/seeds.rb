# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do 
    Quote.create(text:Faker::Quote.famous_last_words , author: Faker::FunnyName.name , year:rand(1800...2020), likes:rand(1..500))
end 



7.times do 
    Comment.create(commenter:Faker::GreekPhilosophers.name , content:Faker::TvShows::TheFreshPrinceOfBelAir.quote, quote_id:rand(1...15) )
end