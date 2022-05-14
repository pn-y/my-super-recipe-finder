# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

recipes_json = File.read('db/recipes-en.json')
parsed_recipes = JSON.parse(recipes_json)
parsed_recipes.sample(300).each do |recipe|
  Recipe.create!(title: recipe['title'], ingredients: recipe['ingredients'].join(', '))
end
