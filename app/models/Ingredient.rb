class Ingredient

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        Allergy.all.max_by { |allergy| Allergy.all.count(allergy)}.ingredient
    end
end