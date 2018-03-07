# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alec = Customer.create email: 'alec@gmail.com', username: 'aleccunningham', password: 'justtestit', country: 'US', state: 'IL', city: 'Chicago', first_name: 'Alec', last_name: 'Cunningham'
tom = Customer.create email: 'tom@gmail.com', username: 'tomsmith', password: 'justtestit', country: 'US', state: 'IL', city: 'Chicago', first_name: 'Tom', last_name: 'Smit'
griffin = Customer.create email: 'griffin@gmail.com', username: 'griffinroberts', password: 'justtestit', country: 'US', state: 'PH', city: 'Pittsburg', first_name: 'Griffin', last_name: 'Roberts'
freddy = Customer.create email: 'freddy@gmail.com', username: 'freddylucas', password: 'justtestit', country: 'US', state: 'IL', city: 'Chicago', first_name: 'Freddy', last_name: 'Lucas'
duke = Customer.create email: 'duke@gmail.com', username: 'dukeofearl', password: 'justtestit', country: 'US', state: 'IL', city: 'Chicago', first_name: 'Duke', last_name: 'Earl'

halfoff = Promotion.create title: "50% Off All Shoes", description: "Yup!", imagepath: "shoe1.jpg"
buy1get1 = Promotion.create title: "Buy 1 Get 1 Half Off!", description: "Yup!", imagepath: "shoe2.jpg"
newpromo = Promotion.create title: "New prices!", description: "Yup!", imagepath: "shoe3.jpeg"
couples = Promotion.create title: "Couples Deal", description: "Yup!", imagepath: "shoe4.jpg"
