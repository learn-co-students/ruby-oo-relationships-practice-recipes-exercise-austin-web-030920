

class Recipe
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end




    def users
        RecipeCard.all.select{|card| card.recipe == self}.map{|card| recipe_card.user}
    end

    def allergens
        Allergy.all.select{|allergy| self.ingredients.include?(allergy.ingredient)}.map{|allergy| allergy.ingredient}
        #self.ingredients & Allergy.all.map { |allergen| allergen.ingredient}
    end

    def add_ingredients(ingredients)
        ingredients.each{|ingredient| RecipeIngredient.new(self, ingredient)}
    end

    def ingredients
        RecipeIngredient.all.select{|ri| ri.recipe == self}.map{|ri| ri.ingredient}
    end


    def self.all
        @@all
    end

    def self.most_popular
        Recipe.all.max_by{|recipe| RecipeCard.all.select{|card| card.recipe == recipe}.count}
    end

end