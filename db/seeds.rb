# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Booking.destroy_all

sarah  = User.create! (
  first_name: 'Sarah',
  last_name: 'Smith',
  email: 'sarah_smith@gmail.com',
  password: 'hello123')

nathalie = User.create! (
  first_name: 'Nathalie',
  last_name: 'Faber',
  email: 'nathaliefaber@hotmail.com',
  password: 'funkystuff123')

puts '2 users created'

booking_1 = booking.create!(
  start_datetime: '2 May 2022',
  end_datetime: '3 May 2022',
  status: 'confirmed',
  user: nathalie,
)

booking_2 = booking.create!(
  start_datetime: '10 Nov 2022',
  end_datetime: '11 Nov 2022',
  status: 'pending',
  user: sarah,
)

booking_3 = booking.create!(
  start_datetime: '22 Dec 2022',
  end_datetime: '22 Dec 2022',
  status: 'cancelled',
  user: sarah,
)
puts '3 bookings created'

art_service_1 = art_service.create!(
  title:
  description:
  price:
  address:
  category:
)

art_service_1 = art_service.create!(
  title:
  description:
  price:
  address:
  category:
)

art_service_1 = art_service.create!(
  title:
  description:
  price:
  address:
  category:
)
