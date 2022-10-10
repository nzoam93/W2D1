class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(number)
        @age = number
    end

    def bark
        @age > 3 ? @bark.upcase : @bark.downcase
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(str)
        @favorite_foods.map! {|ele| ele.downcase} #downcase because that's what it wants in the description. mapping each ele to be downcase
        favorite_foods.include?(str.downcase)
    end

    def say_hi_to(person)
        @name + " says hello to " + person + " by going " + @bark
    end
end

dog_1 = Dog.new("Barker","Cocker Spaniel", 4, "woof woof!","Cereal")
p dog_1.say_hi_to("Colleen")

dog_2 = Dog.new("Beanie","Mutt", 9.8, "squeal","all food")
p dog_2.say_hi_to("Noam")
