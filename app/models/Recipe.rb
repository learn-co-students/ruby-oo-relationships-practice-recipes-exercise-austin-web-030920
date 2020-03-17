class Recipe
    attr_accessor :name, :user, :ingredients

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        Recipe.all.max_by do |recipe| 
          RecipeCard.all.select do |rc|
            rc.recipe == recipe
          end.count
        end
    end

    def users
        RecipeCard.all.select {|card| card.recipe == self}
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end
    
    def ingredients
        RecipeIngredient.all.select {|x| x.recipe == self}.map {|x| x.ingredient }
    end

    def allergens
        allergic_ingredients = [] 
        Allergy.all.each do |allergen|
            allergic_ingredients << allergen.ingredient
        end.uniq

        result = []
        ingredients.each do |ingredient|
            result << ingredient if allergic_ingredients.include?(ingredient)
        end
        result
    end
end