# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ad1 = Ad.create( title: 'la plus belle des annonces',
                  description: 'Magnifique maison de ville',
                  price: 500,
                  space: 150,
                  rooms: 5,
                  )
ad2 = Ad.create( title: 'le petit coin de paradis',
                  description: 'Magnifique maison de ville',
                  price: 1000,
                  space: 100,
                  rooms: 2,
                  )
ad3 = Ad.create( title: 'elle est magnifique',
                  description: 'Magnifique maison de ville',
                  price: 500,
                  space: 150,
                  rooms: 5,
                  )
ad4 = Ad.create(title: 'elle est splendide',
                  description: 'Magnifique maison de ville',
                  price: 1000,
                  space: 50,
                  rooms: 1,
                  )
ad5 = Ad.create(title: 'la plus belle des annonces',
                  description: 'Magnifique maison de ville',
                  price: 2000,
                  space: 150,
                  rooms: 5,
                  )
