# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Platform.destroy_all

User.create(first_name: "Eric", last_name: "Klimowich", username: "eklimowich", bio: "Stuff about me...", location_city: "Brooklyn", location_state: "NY")
User.create(first_name: "Scoti", last_name: "Dodson", username: "scodod", bio: "Stuff about Scoti...", location_city: "New York", location_state: "NY")
User.create(first_name: "Bridget", last_name: "Blatz", username: "BB", bio: "Stuff about Bridge...", location_city: "Nazareth", location_state: "PA")

Platform.create(name: "Netflix" , subscription_cost: 9.99)
Platform.create(name: "Prime" , subscription_cost: 12)
Platform.create(name: "HBO" , subscription_cost: 15)
Platform.create(name: "Hulu" , subscription_cost: 13.22)

Show.create(title: "The Office", seasons: 9, status: false, lead_actor: "Steve Carrell", genre: "comedy", description: "everyone loves this show")
Show.create(title: "WestWorld", seasons: 2, status: true, lead_actor: "Evan Rachel Woods", genre: "sci-fi", description: "all the robots")

UserShow.create(user_id: 1, show_id: 1, status: "watching", season: 2, episode: 3)
UserShow.create(user_id: 2, show_id: 2, status: "watched", season: 2, episode: 12)
UserShow.create(user_id: 1, show_id: 2, status: "not started", season: 1, episode: 1)
