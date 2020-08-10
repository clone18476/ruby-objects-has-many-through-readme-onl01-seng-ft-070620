class Waiter
  
  attr_accessor :name, :experience
  
  @@all = []
  
  def initialize(name, experience)    # initializes with a name and years of experience
     @name = name 
     @experience = experience 
     @@all << self
  end 
  
  def new_meal(customer, total, tip)
      Meal.new(self, customer, total, tip)
  end

  def meals
      Meal.get_meals_by_waiter(self)
  end

  def best_tipper
    meal_with_biggest_tip = nil
      Meal.all.each do |meal|
        if (!meal_with_biggest_tip || meal.tip > meal_with_biggest_tip.tip) 
            meal_with_biggest_tip = meal
          end
        end
      meal_with_biggest_tip.customer
    end

    def self.all
        @@all
    end


end