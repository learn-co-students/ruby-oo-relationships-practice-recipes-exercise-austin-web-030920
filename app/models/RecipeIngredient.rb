# join table for Recipe and Ingredient

class RecipeIngredient
    attr_accessor :recipe, :ingredient
    @@all = []

    def initialize(rec, ing)
        @recipe = rec
        @ingredient = ing
        @@all << self
    end

    def self.all 
        @@all
    end

end


