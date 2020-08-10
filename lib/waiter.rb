class Waiter
  
  attr_accessor :name, :years
  
  @@all = []
  
  def initialize(name, years)    # initializes with a name and years of experience
     @name = name 
     @year = years 
     @@all << self

  end 
  
  def self.all    # is class method that returns the contents of @@all
    @@all
  end 
  
  

end