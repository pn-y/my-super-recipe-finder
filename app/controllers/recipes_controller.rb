class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipes = @recipes.search_recipe_ingredients(ingredients_array) if ingredients_array.any?
    @recipes = @recipes.order(:id).limit(20)
  end

  def ingredients_array
    (params[:ingredients] || '').split(',')
  end
end
