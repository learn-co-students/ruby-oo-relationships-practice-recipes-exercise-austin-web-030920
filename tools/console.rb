require_relative '../config/environment.rb'

dirt = Ingredient.new("dirt")
water = Ingredient.new("water")
crust = Ingredient.new("crust")
mud = Recipe.new("mud")
mud_pie = Recipe.new("mud pie")
mud.add_ingredients([dirt, water])
mud_pie.add_ingredients([crust, dirt, water])


binding.pry
