
class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all 
    end

    def add_recipe_card(recipe, rating, time = Time.now(local))
        RecipeCard.new(recipe, self, rating, time)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end
end