
require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  setup do
    @recipe_one = Recipe.create!(title: 'one', ingredients: 'flour')
    @recipe_two = Recipe.create!(title: 'two', ingredients: 'egg')
    @recipe_three = Recipe.create!(title: 'three', ingredients: 'flour, egg')
    @recipe_four = Recipe.create!(title: 'four', ingredients: 'milk, flour, egg')
    @recipe_five = Recipe.create!(title: 'five', ingredients: 'milk, beef, chiken')
  end

  test "search" do
    search_params = ['flour', 'egg']

    result = Recipe.search_recipe_ingredients(search_params)

    assert { result == [@recipe_three, @recipe_one, @recipe_two, @recipe_four] }
  end

  test "another search" do
    search_params = ['chiken']

    result = Recipe.search_recipe_ingredients(search_params)

    assert { result == [@recipe_five] }
  end
end
