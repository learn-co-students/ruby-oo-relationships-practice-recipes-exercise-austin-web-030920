

class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end




    def recipes
        RecipeCard.all.select{|recipe_card| recipe_card.user == self}.map{|recipe_card| recipe_card.recipe}
    end

    def add_recipe_card(recipe, rating, date = Date.today)
        RecipeCard.new(recipe, self, rating, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(user, ingredient)
    end

    def allergens
        Allergy.all.select{|allergy| allergy.user == self}.map{|allergy| allergy.ingredient}
    end

    def top_three_recipes
        RecipeCard.all.select{|card| card.user == self}.max_by(3){|card| card.rating}.map{|card| card.recipe}
    end

    def most_recent_recipe
        RecipeCard.all.select{|card| card.user == self}.max_by{|card| card.date}.recipe
    end

    def safe_recipes
        user_allergens = self.allergens
        Recipe.all.reject{|recipe| recipe.ingredients.include?(user_allergens)}
    end




    def self.all
        @@all
    end
end
