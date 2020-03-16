class RecipeCard
    attr_accessor :recipe, :user, :rating, :date
    @@all = []

    def initialize(recipe, user, rating, date)
      @recipe = recipe
      @user = user
      @rating = rating
      @date = date

      self.class.all << self
    end

    def self.all
        @@all
    end
end