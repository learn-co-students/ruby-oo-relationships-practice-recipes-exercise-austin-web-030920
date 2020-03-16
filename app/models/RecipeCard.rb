# join table for User and Recipe

class RecipeCard
    attr_accessor :date, :rating, :user, :recipe 
    @@all = []

    def initialize(recipe, user, rating, time)
        @recipe = recipe
        @user = user
        @rating = rating
        @date = time
        @@all << self
    end

    def self.all 
        @@all
    end

    def user 
        @user 
    end

    def recipe 
        @recipe 
    end
end