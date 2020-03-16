class Recipe

    @@all = []
    def initialize()
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        Recipe.all.max_by { |recipe| RecipeCard.all.select { |card| card.recipe == recipe}.count}

    def users
        RecipeCard.all.select { |card| card.recipe == self}.map { |card| card.user}
    end

    def ingredients
        RecipeIngredient.all.select { |ingredient| ingredient.recipe == self}.map { |ing| ing.ingredient}
    end

    def allergens
        ingredients & Allergy.all.map { |allergen| allergen.ingredient}
    end

    def add_ingredients(new_ingredients)
        new_ingredients.each { |ingredient| RecipeIngredient.new(ingredient, self)}
    end
end