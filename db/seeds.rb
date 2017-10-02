# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lauren = User.create(username: "lauren")
natalie = User.create(username: "natalie")
bobby = User.create(username: "bobby")

laurenscooler = Cooler.create(user: lauren)
nataliescooler = Cooler.create(user: natalie)
bobbyscooler = Cooler.create(user: bobby)

coors = Beer.create(name:"coors")
blue_moon = Beer.create(name:"blue moon")

Log.create(cooler: nataliescooler, beer: blue_moon, comment: "Favorite Beer")
Log.create(cooler: laurenscooler, beer: coors, comment: "Worst Beer")
