# README

## App on heroku https://my-super-recipe-finder.herokuapp.com/

I've decided to go with joining all ingredieints into one column and searching through it using full text search.
All I need is column `ingredients` but i've also added a title :) 
Search form require comma separated ingredients. 

For running locally docker required. 

- docker-compose run app bash
- (inside docker) rails db:setup
- (inside docker) bundle install
- (inside docker) exit
- docker-compose run --service-ports app
- open http://localhost:3000/recipes
