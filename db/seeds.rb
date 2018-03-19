# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(email: 'alec@gmail.com', username: 'aleccunningham', password: 'justtestit', country: 'US', state: 'IL', city: 'Chicago', first_name: 'Alec', last_name: 'Cunningham'
Customer.create(email: 'tom@gmail.com', username: 'tomsmith', password: 'justtestit', country: 'US', state: 'IL', city: 'Chicago', first_name: 'Tom', last_name: 'Smit'
Customer.create(email: 'griffin@gmail.com', username: "griffinroberts", password: "justtestit", country: "US", state: "PH", city: "Pittsburg", first_name: "Griffin", last_name: "Roberts"
Customer.create(email: "freddy@gmail.com", username: "freddylucas", password: "justtestit", country: "US", state: "IL", city: "Chicago", first_name: "Freddy", last_name: "Lucas"
Customer.create(email: "duke@gmail.com", username: "dukeofearl", password: "justtestit", country: "US", state: "IL", city: "Chicago", first_name: "Duke", last_name: "Earl")

Product.create(name: "Nike Free", price: "100.0", category: "shoes", description: "Newest release from Nike")
Product.create(name: "Nike Free", price: "80.0", category: "shoes", description: "Newest release from Nike")
Product.create(name: "Nike Free", price: "85.0", category: "shoes", description: "Newest release from Nike")
Product.create(name: "Nike Free", price: "80.0", category: "shoes", description: "Newest release from Nike")
Product.create(name: "Runnning Shirt", price: "25.0", category: "clothes", description: "Newest release from Nike")
Product.create(name: "Winter Running Tights", price: "50.0", category: "clothes", description: "Newest release from Nike")
Product.create(name: "Biking Hat", price: "10.0", category: "clothes", description: "Newest release from Nike")

Promotion.create(title: "Promotion 1", description: "Promotion 1 Desc", imagepath: "shoe1.jpg", startdate: "2015-04-01", enddate: "2015-04-30")
Promotion.create(title: "Promotion 2", description: "Promotion 2 Desc", imagepath: "shoe2.jpgg", startdate: "2015-05-01", enddate: "2015-05-31")
Promotion.create(title: "Promotion 3", description: "Promotion 3 Desc", imagepath: "shoe3.jpg", startdate: "2015-05-01", enddate: "2015-05-31")
Promotion.create(title: "Promotion 4", description: "Promotion 4 Desc", imagepath: "shoe4.jpg", startdate: "2015-06-01", enddate: "2015-07-31")
Promotion.create(title: "Promotion 5", description: "Promotion 5 Desc", imagepath: "shoe5.jpg", startdate: "2015-04-01", enddate: "2015-04-30")
