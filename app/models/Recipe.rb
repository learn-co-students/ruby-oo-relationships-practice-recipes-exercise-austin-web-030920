class Recipe
    attr_accessor :title
    @@all = []

    def initialize(title)
      @title = title
      self.class.all << self
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
      RecipeCard.all.select {|rc| rc.recipe == self}.map {|rc| rc.user}
    end

    def ingredients
      RecipeIngredient.all.select {|ri| ri.recipe == self}.map {|ri| ri.ingredient}
    end

    def allergens
      ingredients.select do |ingredient|
        allergies.uniq.include?(ingredient)
      end
    end

    def allergies
      Allergy.all.map {|allergy| allergy.ingredient}
    end

    def add_ingredients(ingredient_arr)
      ingredient_arr.each {|ingredient| RecipeIngredient.new(ingredient, self)}
    end

end