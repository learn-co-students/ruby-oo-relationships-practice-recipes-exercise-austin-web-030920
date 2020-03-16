


class Ingredient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end





    def self.all
        @@all
    end

    def self.most_common_allergens
        Ingredient.all.max_by{|ingredient| Allergy.all.select{|allergy| allergy.ingredient == self}.count}
    end

end