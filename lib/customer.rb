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
  
  
end