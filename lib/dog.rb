class Dog
  
  attr_accessor :name, :breed
  # attr_reader :id
  
  # def initialize(name, breed, id=nil)
  #   @name = name
  #   @breed = breed
  #   @id = id
  # end
  
  attr_accessor :name, :breed

  def initialize(params = {})
    @name = params.fetch(:name, ?)
    @breed = params.fetch(:breed, ?)
  end
  
  
  
end