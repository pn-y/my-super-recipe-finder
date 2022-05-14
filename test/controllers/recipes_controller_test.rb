class RecipesControllerTest < ActionController::TestCase
  test 'index' do
    Recipe.create!(title: 'one', ingredients: 'flour')

    get :index

    assert_response 200
  end
end
