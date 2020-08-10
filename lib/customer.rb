class Customer 
  
  attr_accessor :name, :age 
  
  @@all = []
  
  
  def initialized(name, age)    # initialized with name and age
    @name = name
    @age = age
  end 
  
  def self.all    # is class method that returns the contents of @@all
    @@all
  end 
  
  def new_meal(waiter, total, tip)   # new_meal initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip
    Meal.new(waiter, self, total, tip)
    
  end 
  
end