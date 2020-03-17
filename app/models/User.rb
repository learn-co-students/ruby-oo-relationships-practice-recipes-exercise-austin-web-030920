class User
    attr_accessor :name, :recipes, :allergies

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def recipes
        RecipeCard.all.select {|card| card.user == self}
    end

    def add_recipe_card(recipe, rating, date = DateTime.now)
        RecipeCard.new(self, recipe, rating, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def top_three_recipies
        RecipeCard.all.max_by(3) {|card| card.rating}
    end

    def most_recent_recipe
        recipes.last
    end
end