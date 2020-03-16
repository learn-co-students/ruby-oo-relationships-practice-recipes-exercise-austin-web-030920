require_relative '../config/environment.rb'

15.times {User.new(Faker::Name.name)}
15.times {Ingredient.new(Faker::Food.ingredient)}
15.times {Recipe.new(Faker::Food.dish)}

i = 0
5.times do 
    RecipeCard.new(Recipe.all[i], User.all[i], i, "Friday")
    RecipeIngredient.new(Ingredient.all[i], Recipe.all[i])
    Allergy.new(Ingredient.all[i], User.all[i])
    User.all.first.add_recipe_card(Recipe.all[i], rand(0..6), "Friday")

    i += 1
end

binding.pry
