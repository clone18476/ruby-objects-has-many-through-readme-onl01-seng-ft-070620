class Customer 
  
  attr_accessor :name, :age 
  
  @@all = []
  
  
  def initialized(name, age)    # initialized with name and age
    @name = name
    @age = age
    @@all << self
  end 
  
  def self.all    # is class method that returns the contents of @@all
    @@all
  end 
  
  def new_meal(waiter, total, tip)   # new_meal initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip
    Meal.new(waiter, self, total, tip)
  end 
  
  def meals      # returns an Array of Meal instances associated with this customer
    Meal.get_meals_by_customer(self)
  end

  def waiters      # returns an Array of Waiter instances associated with this customer's meals
    Meal.get_waiters_by_customer(self)
  end
  
end