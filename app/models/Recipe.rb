
class Recipe
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all 
    end

    def add_ingredients(ingred)
        ingred.each { |ingredient| RecipeIngredient.new(self, ingredient)}
    end
end