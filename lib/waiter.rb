require "pry"
class Waiter

    attr_accessor :name, :age

    @@all = []

    def initialize(name, yrs_experience)

        @name = name
        @ayrs_experience = yrs_experience
        @@all << self

    end

    def self.all
        
        @@all

    end

    def new_meal(customer, total, tip = 0)

        Meal.new(self, customer, total, tip)

    end

    def meals

        Meal.all.select do |meal|
            meal.waiter == self
        end

    end

    def best_tipper

        best_tipped_meal = meals.max {|a, b| a.tip <=> b.tip}

        best_tipped_meal.customer

    end

end