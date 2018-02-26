# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bike.create(brand: "schimano", spec: "bmx", description:"Good bike", city: "Lisbon", address:"Av. Liberdade n18", price: 50, user_id: 1)
Bike.create(brand: "nike", spec: "bmx", description:"Bad bike", city: "Lisboa", address:"Cais do sodre", price: 60, user_id: 1)
Bike.create(brand: "schimano", spec: "mountain bike", description:"Best bike", city: "Porto", address:"Av. Aliados n20", price: 50, user_id: 2)


