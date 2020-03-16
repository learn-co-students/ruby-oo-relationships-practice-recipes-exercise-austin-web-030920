require_relative '../config/environment.rb'

tom = User.new('tom')
jim =User.new('jim')
beeko = User.new('beeko')
jane = User.new('jane')
parsley = Ingredient.new('parsley')
mayo = Ingredient.new('Mayonnaise')
oregano = Ingredient.new('oregano')
shrimp = Ingredient.new('shrimp')
tom.declare_allergy(shrimp)
jane.declare_allergy(shrimp)
beeko.declare_allergy(shrimp)
jane.declare_allergy(oregano)
tom.declare_allergy(mayo)

recipe1 = Recipe.new()
recipe2 = Recipe.new()
recipe3 = Recipe.new()
recipe4 = Recipe.new()
recipe5 = Recipe.new()

jane.add_recipe_card(recipe5, Date.new(1999, 3, 9), 50)

tom.add_recipe_card(recipe4, Date.new(2015, 3, 9), 5)
tom.add_recipe_card(recipe2, Date.new(2017, 3, 9), 6)
tom.add_recipe_card(recipe2, Date.new(2018, 3, 9), 7)
tom.add_recipe_card(recipe2, Date.new(2018, 3, 9), 4)
tom.add_recipe_card(recipe2, Date.new(2018, 3, 9), 2)

jim.add_recipe_card(recipe1, Date.new(2020, 3, 9), 8)
jim.add_recipe_card(recipe5, Date.new(2012, 3, 9), 9)
jim.add_recipe_card(recipe3, Date.new(2011, 3, 9), 10)
beeko.add_recipe_card(recipe5, Date.new(2007, 3, 9), 2)
beeko.add_recipe_card(recipe4, Date.new(2008, 3, 9), 3)
jane.add_recipe_card(recipe2, Date.new(2009, 3, 9), 4)







testdates = [   Date.new(2015, 3, 9),
            Date.new(2012, 5, 7),
            Date.new(2020, 6, 11),
            Date.new(1920, 3 , 3)
        ]


binding.pry
