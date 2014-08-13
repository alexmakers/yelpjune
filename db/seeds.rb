# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
Review.destroy_all

kfc = Restaurant.create(name: 'KFC')
kfc.reviews.create(rating: 1, thoughts: 'Bad')
kfc.reviews.create(rating: 4, thoughts: 'Good')
kfc.reviews.create(rating: 5, thoughts: 'Great')
kfc.reviews.create(rating: 3, thoughts: 'OK')
kfc.reviews.create(rating: 2, thoughts: 'Poor')

nandos = Restaurant.create(name: 'Nandos')
nandos.reviews.create(rating: 1, thoughts: 'Really Bad')
nandos.reviews.create(rating: 4, thoughts: 'Really Good')
nandos.reviews.create(rating: 5, thoughts: 'Really Great')
nandos.reviews.create(rating: 3, thoughts: 'Really OK')
nandos.reviews.create(rating: 2, thoughts: 'Really Poor')

wasabi = Restaurant.create(name: 'Wasabi')
wasabi.reviews.create(rating: 1, thoughts: 'Really Really Bad')
wasabi.reviews.create(rating: 4, thoughts: 'Really Really Good')
wasabi.reviews.create(rating: 5, thoughts: 'Really Really Great')
wasabi.reviews.create(rating: 3, thoughts: 'Really Really OK')
wasabi.reviews.create(rating: 2, thoughts: 'Really Really Poor')
