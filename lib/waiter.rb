class Waiter

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)

        @name = name
        @age = age
        @@all << self

    end

    def self.all
        
        @@all

    end

    def new_meal


    end

    def meals

    end

    def best_tipper


    end

end