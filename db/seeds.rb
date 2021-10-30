# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
Booking.destroy_all
ArtService.destroy_all
User.destroy_all

sarah = User.create(
  {first_name: 'Sarah',
  last_name: 'Smith',
  about: 'Dance with me, as I create an experience so unique and thoughtful, noone could ever forget it.',
  email: 'sarah_smith@gmail.com',
  password: 'hello123'})

nathalie = User.create(
  {first_name: 'Nathalie',
  last_name: 'Faber',
  about: 'I will make your hips shake and your arms go around and around, like the wheels of the bus!',
  email: 'nathaliefaber@hotmail.com',
  password: 'funkystuff123'})

max = User.create(
  {first_name: 'Max',
  last_name: 'Schmidt',
  about: 'I am a talented card magician, touring the world. Get ready to be tricked.',
  email: 'max@gmail.com',
  password: 'hello123'})

felix = User.create(
  {first_name: 'Felix',
  last_name: 'Fat',
  about: 'I am a champions league breakdancer.',
  email: 'felix_felix@gmail.com',
  password: 'hello123'})

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

art_service4 = ArtService.create(
  {title: 'asian chef',
  description: 'wonderful 2 hour opera concert',
  price: '400€',
  address: 'Berlin Charlottenburg',
  category: 'singing',
  user: felix}
)

art_service5 = ArtService.create(
  {title: 'film making',
  description: 'wonderful 2 hour opera concert',
  price: '1000€',
  address: 'Berlin Zehlendorf',
  category: 'film',
  user: nathalie}
)

art_service6 = ArtService.create(
  {title: 'puppet theatre',
  description: 'Funny muppet show',
  price: '150€',
  address: 'Berlin Friedrichshain',
  category: 'theatre',
  user: max}
)

art_service7 = ArtService.create(
  {title: 'Card magician',
  description: 'I do a lot of card tricks',
  price: '300€',
  address: 'Berlin Neukölln',
  category: 'magic',
  user: nathalie}
)

art_service8 = ArtService.create(
  {title: 'baking',
  description: 'I bake wonderful cinnamon buns',
  price: '99€',
  address: 'Berlin Kreuzberg',
  category: 'cooking',
  user: sarah}
)

art_service9 = ArtService.create(
  {title: 'Painting',
  description: 'I am the next Frida Kahlo',
  price: '999',
  address: 'Berlin Prenzlauer Berg',
  category: 'painter',
  user: nathalie}
)

art_service10 = ArtService.create(
  {title: 'Yoga teacher',
  description: 'I am a Vinyasa flow yoga teacher.',
  price: '200€',
  address: 'Berlin Mitte',
  category: 'sports',
  user: sarah}
)

puts '3 services created'

booking_1 = Booking.create!(
  {start_time: DateTime.parse('2 May 2022'),
  end_time: DateTime.parse('3 May 2022'),
  status: 'confirmed',
  user: nathalie,
  art_service: art_service1}
)

booking_2 = Booking.create!(
  {start_time: DateTime.parse('10 Nov 2022'),
  end_time: DateTime.parse('11 Nov 2022'),
  status: 'pending',
  user: sarah,
  art_service: art_service2}
)

booking_3 = Booking.create!(
  {start_time: DateTime.parse('21 Dec 2020'),
  end_time: DateTime.parse('22 Dec 2022'),
  status: 'cancelled',
  user: sarah,
  art_service: art_service3}
)

booking_4 = Booking.create!(
  {start_time: DateTime.parse('10 Nov 2022'),
  end_time: DateTime.parse('11 Nov 2022'),
  status: 'pending',
  user: sarah,
  art_service: art_service4}
)
puts '3 bookings created'
