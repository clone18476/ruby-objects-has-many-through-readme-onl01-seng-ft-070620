class Meal
  
  attr_accessor :waiter, :customer, :total, :tip 
  
  @@all = []
  
  def initialize(waiter, customer, total, tip)    # initializes with a waiter, customer, total, and tip
     @waiter = waiter 
     @customer = customer
     @total = total
     @tip = tip
  end 
  
  def self.all    # is class method that returns the contents of @@all
    @@all
  end 
end