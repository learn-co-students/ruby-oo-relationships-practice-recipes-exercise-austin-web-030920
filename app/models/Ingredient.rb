class Ingredient
    attr_accessor :name, :user

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        Ingredient.all.max_by do |ingredient|
            Allergy.all.select do |allergen|
                allergen.ingredient == ingredient
            end.count
        end
    end
end