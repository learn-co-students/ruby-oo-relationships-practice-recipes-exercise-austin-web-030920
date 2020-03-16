# join table between User and Ingredient

class Allergy
    attr_accessor :ingredient, :user 
    @@all = []

    def initialize(ing, user)
        @ingredient = ing 
        @user = user 
        @@all << self
    end

    def self.all 
        @@all
    end

    def ingredient 
        @ingredient
    end

    def user 
        @user 
    end
end