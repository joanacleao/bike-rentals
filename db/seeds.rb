# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all
User.destroy_all
user_1 = User.create(email:"sdfadsfa@gmail.com", password: 123456)
user_2 = User.create(email:"dadadf@hotmail.com", password: 123456)
bike_1 = Bike.new(brand: "schimano", spec: "bmx", description:"Good bike", city: "Lisbon", address:"Av. Liberdade n18", price: 50)
bike_1.user = user_1
bike_1.save!
bike_2 = Bike.new(brand: "nike", spec: "bmx", description:"Bad bike", city: "Lisboa", address:"Cais do sodre", price: 60)
bike_2.user = user_1
bike_2.save!
bike_3 = Bike.new(brand: "schimano", spec: "mountain bike", description:"Best bike", city: "Porto", address:"Av. Aliados n20", price: 50, user_id: 2)
bike_3.user = user_2
bike_3.save!
