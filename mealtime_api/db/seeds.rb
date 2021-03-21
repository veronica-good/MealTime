# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Category.delete_all
Recipe.delete_all
Preparation.delete_all
Food.delete_all
ShoppingCart.delete_all
Plan.delete_all
FoodPlan.delete_all
# User
super_user= User.create(
    f_name:"Veronica",
    l_name: "Good",
    email: "vg@vg.com",
    password: "supersecret"
)

# sources
images=[
    "https://images.freeimages.com/images/large-previews/f3f/food-1171568.jpg",
    "https://images.freeimages.com/images/large-previews/731/food-1326695.jpg",
    "https://images.freeimages.com/images/large-previews/4e6/food-1329024.jpg",
    "https://images.freeimages.com/images/large-previews/fcf/food-4-1324994.jpg",
    "https://images.freeimages.com/images/large-previews/53b/food-3-1324998.jpg",
    "https://images.freeimages.com/images/large-previews/4ba/healthy-food-1327899.jpg",
    "https://images.freeimages.com/images/large-previews/25d/food-1325335.jpg",
    "https://images.freeimages.com/images/large-previews/42b/chinees-food-3-1323899.jpg",
    "https://images.freeimages.com/images/large-previews/ecc/roast-food-1322814.jpg",
    "https://images.freeimages.com/images/large-previews/b84/mediterranean-healthy-food-1329554.jpg",
    "https://images.freeimages.com/images/large-previews/e26/fine-food-3-1328157.jpg",
    "https://images.freeimages.com/images/large-previews/7ec/fine-italian-food-5-1519678.jpg"
];
b=[true, false]
cat=['breakfast', 'lunch', 'dinner']

# category
c1=Category.create(name: 'breakfast')
c2=Category.create(name: 'lunch')
c3=Category.create(name: 'dinner')
category=Category.all

# Food
images.map do |i|
    f=Food.create(
        image_url: i,
        name: Faker::Food.unique.dish,
        description: Faker::Food.description,
        lactose_free: b[rand(0..1)],
        vegeterian: b[rand(0..1)],
        kids_friendly: b[rand(0..1)]
    )
    # Recipe
    if f.valid?
        f.recipes=10.times.map do
            Recipe.new(
                ingredients: Faker::Food.ingredient,
                two: 100,
                four: 200,
                measure: Faker::Food.metric_measurement
            )
        end
    # Preparation
        f.preparations=7.times.map do
            Preparation.new(
              step: Faker::Lorem.paragraph
            )
        end

        f.categories=category.shuffle.slice(0, rand(0..category.count))
    end

end

puts "Seeded"