# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
ArtService.destroy_all
Booking.destroy_all
User.destroy_all

sarah = User.create(
  {first_name: 'Sarah',
  last_name: 'Smith',
  email: 'sarah_smith@gmail.com',
  password: 'hello123'})

nathalie = User.create(
  {first_name: 'Nathalie',
  last_name: 'Faber',
  email: 'nathaliefaber@hotmail.com',
  password: 'funkystuff123'})

puts '2 users created'

art_service1 = ArtService.create(
  {title: 'ballet',
  description: '2 hour beautiful ballet show in your living room',
  price: '350€',
  address: 'Berlin Mitte',
  category: 'dancing',
  user: sarah}
)

art_service2 = ArtService.create(
  {title: 'portrait painting',
  description: 'have the portraits of your loved ones painted!',
  price: '280€',
  address: 'Berlin Kreuzberg',
  category: 'painting',
  user: sarah}
)

art_service3 = ArtService.create(
  {title: 'opera singing',
  description: 'wonderful 2 hour opera concert',
  price: '400€',
  address: 'Berlin Charlottenburg',
  category: 'singing',
  user: nathalie}
)

puts '3 services created'

booking_1 = Booking.create(
  {start_time: DateTime.parse('2 May 2022'),
  end_time: DateTime.parse('3 May 2022'),
  status: 'confirmed',
  user_id: nathalie.id,
  art_service_id: art_service1.id}
)

booking_2 = Booking.create(
  {start_time: DateTime.parse('10 Nov 2022'),
  end_time: DateTime.parse('11 Nov 2022'),
  status: 'pending',
  user_id: sarah.id,
  art_service_id: art_service2.id}
)

booking_3 = Booking.create(
  {start_time: DateTime.parse('21 Dec 2020'),
  end_time: DateTime.parse('22 Dec 2022'),
  status: 'cancelled',
  user_id: sarah.id,
  art_service_id: art_service3.id}
)
puts '3 bookings created'
