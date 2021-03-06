# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Bike.destroy_all
User.destroy_all
Booking.destroy_all


user_1 = User.create!(email:"shannon@gmail.com", password: 123456, first_name: "Shannon", last_name: "Graybill", remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519818199/15787238.jpg")
user_2 = User.create(email:"carlos@hotmail.com", password: 123456, first_name: "Carlos", last_name: "Mendes", remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519818291/185615.jpg" )
user_3 = User.create(email:"gui@hotmail.com", password: 123456, first_name: "Guilherme", last_name: "Andrade", remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519818337/gui.jpg" )

bike_1 = Bike.new(brand: "Schimano", spec: "bmx", description:"12 inch Freestyle BMX frame with Hi-Ten steel BMX Forks", city: "Lisbon", address:"Av Liberdade 18, Lisboa", price: 50, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519817070/Z6605.jpg")
bike_1.user = user_1
bike_1.save!
bike_2 = Bike.new(brand: "Pinarello", spec: "bmx", description:"12 inch Freestyle BMX frame with Hi-Ten steel BMX Forks", city: "Lisbon", address:"Rua Nova do Carvalho, 20, Lisboa", price: 60, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519817064/FIT_BIKE_CO_TRL_TRANS_GREEN_2018.jpg")
bike_2.user = user_2
bike_2.save!
bike_3 = Bike.new(brand: "Schimano", spec: "mountain", description:"Hi-Tensile steel frame and forks - 21 Speed Shimano gears - Easy to use twist grip gear levere", city: "Lisbon", address:"Rua Moeda 7, Lisboa", price: 50, user_id: 2, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822176/maxresdsdsefault.jpg")
bike_3.user = user_3
bike_3.save!
bike_4 = Bike.new(brand: "BMC", spec: "road", description:"Aluminium Frame Road Commuter Bike 21 Speed Shimano Components 700c", city: "Lisbon", address:"Av Marginal 30, Lisboa", price: 40, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822391/whyte-wessex-01-1505906320879-rh41p87ozlvv-1507723597398-bz1f98h8jsql-630-354.jpg")
bike_4.user = user_3
bike_4.save!
bike_5 = Bike.new(brand: "TREK", spec: "road", description:"Aluminium Frame Road Commuter Bike 21 Speed Shimano Components 700c", city: "Lisbon", address:"Av Republica 57, Lisboa", price: 65, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822396/reid-granite-gravelbike-17-1462852905618-1ky16msvot2ac-630-80.jpg")
bike_5.user = user_1
bike_5.save!
bike_6 = Bike.new(brand: "Batavus", spec: "mountain", description:"Hi-Tensile steel frame and forks - 21 Speed Shimano gears - Easy to use twist grip gear levere", city: "Lisbon", address:"Rua Alexandre Herculano 4, Lisboa", price: 55, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822179/trek7k.jpg")
bike_6.user = user_2
bike_6.save!
bike_7 = Bike.new(brand: "Schimano", spec: "bmx", description:"12 inch Freestyle BMX frame with Hi-Ten steel BMX Forks", city: "Lisbon", address:"Av Liberdade 18, Lisboa", price: 50, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519817070/Z6605.jpg")
bike_7.user = user_1
bike_7.save!
bike_8 = Bike.new(brand: "Pinarello", spec: "bmx", description:"12 inch Freestyle BMX frame with Hi-Ten steel BMX Forks", city: "Lisbon", address:"Rua Nova do Carvalho, 20, Lisboa", price: 60, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519817064/FIT_BIKE_CO_TRL_TRANS_GREEN_2018.jpg")
bike_8.user = user_2
bike_8.save!
bike_9 = Bike.new(brand: "Schimano", spec: "mountain", description:"Hi-Tensile steel frame and forks - 21 Speed Shimano gears - Easy to use twist grip gear levere", city: "Lisbon", address:"Rua Moeda 7, Lisboa", price: 50, user_id: 2, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822176/maxresdsdsefault.jpg")
bike_9.user = user_3
bike_9.save!
bike_10 = Bike.new(brand: "BMC", spec: "road", description:"Aluminium Frame Road Commuter Bike 21 Speed Shimano Components 700c", city: "Lisbon", address:"Av Marginal 30, Lisboa", price: 40, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822391/whyte-wessex-01-1505906320879-rh41p87ozlvv-1507723597398-bz1f98h8jsql-630-354.jpg")
bike_10.user = user_3
bike_10.save!
bike_11 = Bike.new(brand: "TREK", spec: "road", description:"Aluminium Frame Road Commuter Bike 21 Speed Shimano Components 700ce", city: "Lisbon", address:"Av Republica 57, Lisboa", price: 65, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822396/reid-granite-gravelbike-17-1462852905618-1ky16msvot2ac-630-80.jpg")
bike_11.user = user_1
bike_11.save!
bike_12 = Bike.new(brand: "Batavus", spec: "mountain", description:"Hi-Tensile steel frame and forks - 21 Speed Shimano gears - Easy to use twist grip gear levere", city: "Lisbon", address:"Rua Alexandre Herculano 4, Lisboa", price: 55, remote_photo_url: "http://res.cloudinary.com/dywzzd0as/image/upload/v1519822179/trek7k.jpg")
bike_12.user = user_2
bike_12.save!

booking_1 = Booking.new(start_date: "12-03-2018", end_date:"20-03-2018")
booking_1.user = user_1;
booking_1.bike = bike_3;
booking_1.save!
booking_2 = Booking.new(start_date: "12-03-2018", end_date:"15-03-2018")
booking_2.user = user_2;
booking_2.bike = bike_1;
booking_2.save!
booking_3 = Booking.new(start_date: "12-03-2018", end_date:"13-03-2018")
booking_3.user = user_3;
booking_3.bike = bike_2;
booking_3.save!

review_1 = Review.new(rating: 3, comment: "A good bike. A bit overpriced!")
review_1.bike_id = 3
review_1.booking = booking_1
review_1.save!
review_2 = Review.new(rating: 4, comment: "Nice bike!")
review_2.bike_id = 1
review_2.booking = booking_2
review_2.save!
review_3 = Review.new(rating: 1, comment: "Shitty experience!")
review_3.bike_id = 2
review_3.booking = booking_3
review_3.save!

