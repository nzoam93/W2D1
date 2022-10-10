#the bad way of initializing cats
    # cat_1 = {name: "Sennacy", color: "brown", age: 3}
    # cat_2 = {name: "Whiskers", color: "white", age: 5}
    # cat_3 = {name: "Garfield", color: "orange", age: 7}
#same keys, but differnt values. This is where a class comes in handy

#classes can be used when you are creating a bunch of the same something (i.e. a bunch of cats)
class Cat #to create a class, use the class keyword. name of class must be capitalized
    @@cutie = true #@@ is the class variable
    ANIMALS_ARE_CUTIES = true #class constant. Can't be changed. Must be capitalized
    def initialize(name, color, age)
        @name = name # "@" is the instance variable. Something in the class is instantiated with this value when created
        @color = color
        @age = age
    end

    #getter
    def age
        @age
    end

    #setter
    def age=(number) #note that the = is right next to the "age" "age="
        @age = number
    end

    def purr
        if @age > 5
            return @name.upcase + " goes purrr....."
        end
    end

    def cutie
        @@cutie
    end

    def animals_are_cuties
        ANIMALS_ARE_CUTIES
    end

end

#when we call .new, we are really calling the initalize method within the class
cat_1 = Cat.new("Sennacy","brown",10)
cat_2 = Cat.new("Whiskers","white",5)
# p cat_1

# cat_1.age =42 #change the age to 42 and it changes it to 42 for this kitty
# p cat_1 #now it's calling the method we defined within the class itself

# p cat_1.purr
# p cat_1.cutie
# p cat_1.animals_are_cuties

class String
    def upcase?
        self.upcase == self
    end
end

# p "hello".upcase? #false
# p "HELLO".upcase? #true

class Array
    def has_zero?
        self.any?{|ele| ele == 0} #cool!
    end
end

p [1,2,3,4,0,2,23,4].has_zero? #true
p [1,2,3,4,2,23,4].has_zero? #false
