class Recipe < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_recipe_ingredients,
  against: :ingredients,
  using: {
    tsearch: { dictionary: :english, normalization: 1, any_word: true }
  }
end
