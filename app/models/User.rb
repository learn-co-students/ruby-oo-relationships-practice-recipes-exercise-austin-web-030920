class User

    @@all = []

    attr_accessor :name
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select { |recipe_card| recipe_card.user == self}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, date, rating, self)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def allergens
        Allergy.all.select { |allergy| allergy.user == self}.map { |allergy| allergy.ingredient}

    end

    def top_three_recipes
        recipes.sort_by { |recipe| recipe.rating}.last(3).recipe
        
    end

    def most_recent_recipe
        recipes.sort_by { |recipe| recipe.date}.first.recipe
    end


end