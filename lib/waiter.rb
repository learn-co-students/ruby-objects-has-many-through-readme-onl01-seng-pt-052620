class Waiter

    attr_accessor :name, :yrs_of_experience
    @@all = []

    def initialize(name, yrs_of_experience)
        @name = name
        @yrs_of_experience = yrs_of_experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select { |meal| meal.waiter == self }
    end

    def best_tipper
        largest_tip = 0
        best_tipper = nil
        self.meals.each do |meal|
            if meal.tip > largest_tip
                largest_tip = meal.tip
                best_tipper = meal.customer
            end
        end
        best_tipper
    end


end