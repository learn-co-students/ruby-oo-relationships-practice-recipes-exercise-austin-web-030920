class User
    attr_accessor :name
    @@all = []

    def initialize(name)
      @name = name

      self.class.all << self
    end

    def self.all
        @@all
    end

    def recipes
      RecipeCard.all.select {|rc| rc.user == self}.map {|rc| rc.recipe}
    end

    def add_recipe_card(recipe, rating, date)
      RecipeCard.new(recipe, self, rating, date)
    end

    def delcare_allergy(ingredient)
      Allergy.new(ingredient, self)
    end

    def allergens
      Allergy.all.select{|allergy| allergy.user == self}.map {|allergy| allergy.ingredient}
    end

    def top_three_recipes
      RecipeCard.all.select {|rc| rc.user == self}.sort_by {|rc| rc.rating}.reverse.take(3).map{|rc| rc.recipe}
    end

    def most_recent_recipe
      recipes.last
    end

    def safe_recipes
      recipes.reject do |recipe|
        recipe.ingredients.any? {|ingredient| allergens.include?(ingredient)}
      end
    end
end