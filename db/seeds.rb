# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
  User.create(name: "Luke", email: "mail@gmail.com", password: "mmmmmm")
  User.create(name: "Luke", email: "email@gmail.com", password: "mmmmmm")    
  Category.create(  name: "Food")
  Category.create(  name: "Cars")
  Category.create(  name: "Electronics")
  Subcategory.create(  name: "rice", category_id: 1)
  Subcategory.create(  name: "Beans", category_id: 1)
  Subcategory.create(  name: "Yam", category_id: 1)
  Subcategory.create(  name: "Trucks", category_id: 2)
  Subcategory.create(  name: "Suv", category_id: 2)
  Subcategory.create(  name: "Bus", category_id: 2)
  Subcategory.create(  name: "TV", category_id: 3)
  Subcategory.create(  name: "Laptop", category_id: 3)
  Subcategory.create(  name: "Radio", category_id: 3)
  Vendor.create(user_id: 1, name: "Santtech",  description: "Software consultant", image: "http://gg.png")
  Product.create(vendor_id: 1, subcategory_id: 1, name: "Chino", price: 100, description: "Invoice generator", image: "http://gg.png")
  Order.create(user_id: 1, product_id: 1, quantity: 12, total_price: 100, )
  Review.create(user_id: 1, product_id: 1, rating: 12, comment: "Nice one Raplh. keep pushing" )
  
