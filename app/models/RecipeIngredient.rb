class RecipeIngredient
    attr_reader :recipe, :ingredient
    attr_accessor :amount

    @@all = []

    def initialize(recipe, ingredient, amount = "1 lump")
        @recipe = recipe
        @ingredient = ingredient
        @amount = amount

        @@all << self
    end

    def self.all
        @@all
    end
end