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

green_monster = Juice.create(
    name: "Green Monsta",
    imageURL: "https://cdn.shopify.com/s/files/1/2182/0257/articles/Green-Monster-620x320_85bda8a5-9475-4eaa-b294-6ee2b3cece49.jpg?v=1539634234",
    user: lizzy, 
    creator: "Lizzy",
    ing: "Kale, spinach, lemon, protein powda",
    directions: "Juice fruits/veg, then throw in a blender with the powda!"
)

gogo_juice = Juice.create(
    name: "Go Go Juice",
    imageURL: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-img.health.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Flarge_16_9%2Fpublic%2Fstyles%2Fmain%2Fpublic%2Fice-coffee-summer-gettyimages-543066350.jpg%3Fitok%3DeUl5xgzq%261526054243&w=300&h=300&c=sc&poi=face&q=85",
    user: rob,
    creator: "Rob",
    ing: "whiskey, coffee",
    directions: "mix it together and serve it hot"
)

unicorn_power = Juice.create(
    name: "Unicorn Power",
    imageURL: "https://www.floridamilk.com/core/fileparse.php/26/urlt/Unicorn_FB_1000x1000.jpg",
    user: martin,
    creator: "Martin",
    ing: "oranges, sunshine, and rainbows",
    directions: "drink up awesome"
)

kale = Ingredient.create(
    name: "kale",
    category: "veggie",
    nutrition_value: 80,
    juice: green_monster
)

coffee = Ingredient.create(
    name: "Coffee",
    category: "caffeine",
    nutrition_value: 5,
    juice: gogo_juice
)

whiskey = Ingredient.create(
    name: "whiskey",
    category: "alchohol",
    nutrition_value: 1,
    juice: gogo_juice
)

orange = Ingredient.create(
    name: "orange",
    category: "fruit",
    nutrition_value: 90,
    juice: unicorn_power
)

orange = Ingredient.create(
    name: "orange",
    category: "fruit",
    nutrition_value: 90,
    juice: green_monster
)

sunshine = Ingredient.create(
    name: "sunshine",
    category: "boost",
    nutrition_value: 110,
    juice: unicorn_power
)

rainbow = Ingredient.create(
    name: "rainbow",
    category: "boost",
    nutrition_value: 90,
    juice: unicorn_power
)

