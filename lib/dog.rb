class Dog
  
  # attr_accessor :name, :breed
  # attr_reader :id
  
  # def initialize(name, breed, id=nil)
  #   @name = name
  #   @breed = breed
  #   @id = id
  # end
  
  attr_accessor :name, :breed
  attr_reader :id

  def initialize(params = {})
    @name = params.fetch(:name, "")
    @breed = params.fetch(:breed, "")
    @id=nil
  end
  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        breed TEXT
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    sql =  <<-SQL 
      DROP TABLE dogs;
        SQL
    DB[:conn].execute(sql) 
  end
  
  def save
    self.new(row[0], row[1], row[3])
  end
  
  
end