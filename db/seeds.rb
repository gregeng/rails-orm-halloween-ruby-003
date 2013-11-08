# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = Kid.new(name: "Greg", age: 24)
a.bucket = Bucket.new
a.save
b = Kid.new(name: "Dave", age: 25)
b.bucket = Bucket.new
b.save
c = Kid.new(name: "Alex", age: 30)
c.bucket = Bucket.new
c.save
d = Kid.new(name: "Sam", age: 27)
d.bucket = Bucket.new
d.save
e = Kid.new(name: "Audrey", age: 25)
e.bucket = Bucket.new
e.save
f = Kid.new(name: "Sonja", age: 30)
f.bucket = Bucket.new
f.save

Candy.create(name: "Hi-Chews")
Candy.create(name: "Twix")
Candy.create(name: "Milky Way")
Candy.create(name: "Take 5")
Candy.create(name: "Rollos")
Candy.create(name: "Fast Breaks")
Candy.create(name: "Haribo Gummy Cola Bottles")
Candy.create(name: "Haribo Gummy Bears")
Candy.create(name: "Sour Patch Kids")
Candy.create(name: "Giant Hershey Chocolate Bar")

candy_objects_array = Candy.all

a1 = House.new(name: "Haunted House")
  a1.candies = candy_objects_array[0..2]
  a1.save
a2 = House.new(name: "Spooky House")
  a2.candies = candy_objects_array
  a2.save
a3 = House.new(name: "Gloomy House")
  a3.candies = candy_objects_array[0..1]
  a3.save
a4 = House.new(name: "Big-Candy House")
  a4.candies = candy_objects_array
  a4.save
a5 = House.new(name: "The Govnahs Mansion")
  a5.candies = candy_objects_array[0..2]
  a5.save
a6 = House.new(name: "The Dentist's House")
  a6.candies = candy_objects_array[0..3]
  a6.save
