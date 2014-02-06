# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Color.create(
  name: "Cervena"
)

Size.create(
  name: "XL"
)

Category.create(
  name: "Oblecenie"
)

Product.create(
  name:           "Tricko Super-Duper",
  description:    "asndioansod",
  category_id:    Category.first.id
)
