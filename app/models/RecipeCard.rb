class RecipeCard

    @@all = []

    attr_reader :date, :rating, :user, :recipe
    def initialize(recipe, date, rating, user)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

end