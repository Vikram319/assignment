class Employee

  #ruby objects has its methods public by default but the data is private
  attr_reader :name #it allows to make object data readable outside the class
  attr_accessor :salary, :name #it allows to read and write object data outside the class 
  attr_writer :name #it allows to write object data outside the class
  
  def obj_fun
    puts "It is an object function. Object of class can access it"
  end

  def self.class_fun # Employee.class_fun
    puts "It is an class function. It can be accessed using class name"
  end

  #
  # Access Specifiers
  #
  private #  methods that are private are accessible within the class
  def salary
    puts 'private method'
  end
  
  public # methods that are public are accessible even from outside the class through class objects
  def policy
    puts 'public method'
  end

  protected #methods that are protected are accessible within the class and child classes 
  def departments
    puts 'protected method'
  end

  def initialize() # it is like constructure to instantiate the object of class
    puts 'object created' 
  end
end

emp = Employee.new() #way to create object of class

emp.policy #accessing object method
Employee.class_fun



# object
# class
# attr_reader
# attr_writer
# attr_accessor
# class_methods
# instance_methods
# access_specifiers




# puts "Employee Salary: #{emp.salary}"
# emp.salary = 50000
# puts "Emplyee Salary2: #{emp.salary}"
# puts emp.instance_variables





