# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bike.destroy_all
User.destroy_all

user_1 = User.create(email:"sdfadsfa@gmail.com", password: 123456, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519818199/15787238.jpg")
user_2 = User.create(email:"dadadf@hotmail.com", password: 123456, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519818291/185615.jpg" )
user_3 = User.create(email:"qsajkaskj@hotmail.com", password: 123456, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519818337/gui.jpg" )


bike_1 = Bike.new(brand: "Schimano", spec: "bmx", description:"Good bike", city: "Lisbon", address:"Av Liberdade 18, Lisboa", price: 50, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519817070/Z6605.jpg")
bike_1.user = user_1
bike_1.save!
bike_2 = Bike.new(brand: "Pinarello", spec: "bmx", description:"Bad bike", city: "Lisbon", address:"R Nova do Carvalho, 20, Lisboa", price: 60, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519817064/FIT_BIKE_CO_TRL_TRANS_GREEN_2018.jpg")
bike_2.user = user_2
bike_2.save!
bike_3 = Bike.new(brand: "Schimano", spec: "mountain", description:"Best bike", city: "Lisbon", address:"R Moeda 7, Lisboa", price: 50, user_id: 2, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822176/maxresdsdsefault.jpg")
bike_3.user = user_3
bike_3.save!
bike_4 = Bike.new(brand: "BMC", spec: "road", description:"Fast bike", city: "Lisbon", address:"Av Marginal 30, Lisboa", price: 40, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822391/whyte-wessex-01-1505906320879-rh41p87ozlvv-1507723597398-bz1f98h8jsql-630-354.jpg")
bike_4.user = user_3
bike_4.save!
bike_5 = Bike.new(brand: "TREK", spec: "road", description:"Beautiful bike", city: "Lisbon", address:"Av Republica 57, Lisboa", price: 65, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822396/reid-granite-gravelbike-17-1462852905618-1ky16msvot2ac-630-80.jpg")
bike_5.user = user_1
bike_5.save!
bike_6 = Bike.new(brand: "Batavus", spec: "mountain", description:"Perfect for downhill", city: "Lisbon", address:"R Alexandre Herculano 4, Lisboa", price: 55, photo: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822179/trek7k.jpg")
bike_6.user = user_2
bike_6.save!


