# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Juice.destroy_all
User.destroy_all

rob = User.create(
    name: "Rob",
    age: "35",
    lifeGoal: "To reverse the aging process! ergo- juicing"
)

martin = User.create(
    name: "Martin",
    age: "31",
    lifeGoal: "World peaace."
)

lizzy = User.create(
    name: "Lizzy",
    age: "26",
    lifeGoal: "8 hours of sleep a night for life!"
)