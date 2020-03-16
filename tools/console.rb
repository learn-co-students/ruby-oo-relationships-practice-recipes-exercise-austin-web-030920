require_relative '../config/environment.rb'

15.times {User.new(Faker::Name.name)}
15.times {Ingredient.new(Faker::Food.ingredient)}
15.times {Recipe.new(Faker::Food.dish)}

5.times do |i|
    RecipeCard.new(Recipe.all[i], User.all[i], rand(1..10), Date.today << rand(0..5))
    RecipeIngredient.new(Recipe.all[i], Ingredient.all[i])
    Allergy.new(Ingredient.all[i], User.all[i])
    User.all.first.add_recipe_card(Recipe.all[i], rand(1..10), Date.today << rand(0..5))
end

binding.pry
