class Dog
  
  attr_accessor :name, :breed
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  
  
end