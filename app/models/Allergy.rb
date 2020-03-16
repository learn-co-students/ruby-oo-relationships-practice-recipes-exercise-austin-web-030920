class Allergy

    @@all = []
    attr_reader :ingredient, :user
    def initialize(ingredient, user)
        @ingredient = ingredient
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end
end