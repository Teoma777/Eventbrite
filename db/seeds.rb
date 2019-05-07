# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.destroy_all
Event.destroy_all
Attendance.destroy_all

User.create(email: "thomasgroux@thp.com", password: "123456", description: "“Le projet Blue Beam de la NASA” est une théorie du complot délirante qui affirme que la NASA aurait une stratégie pour “imposer la religion du Nouvel âge”. Derrière cette formulation religieuse se dissimulerait “un plan scientifique mettant en
œuvre des technologies spatiales high-tech et de l'hypnose permettant un lavage de cerveau et une totale prise en main sur la personne”. “La religion mondiale unique serait la fondation même du nouvel ordre.”", first_name: "Thomas", last_name: "Groux")

20.times do 
	User.create(email: Faker::Internet.email , password: Faker::Games::Pokemon.name , description: Faker::ChuckNorris.fact , first_name: Faker::Games::Pokemon.name , last_name: Faker::Games::Pokemon.name)

end

20.times do 
	Event.create(start_date: Faker::Date.forward(77) , duration: Faker::Number.within(1..100) , title: Faker::Superhero.name , description: Faker::ChuckNorris.fact , price: Faker::Number.within(1..100) , location: Faker::Address.city )

end

5.times do 
	Attendance.create(stripe_customer_id: Faker::Number.within(1..20) )
end
