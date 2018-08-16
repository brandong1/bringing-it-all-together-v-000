class Dog
  attr_accessor :id, :name, :breed


  def initialize(id: nil, name:, breed:)
    @name = name
    @breed = breed
  end

  def self.create_table
    DB[:conn].execute("DROP TABLE IF EXISTS dogs")
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
      sql = <<-SQL
      DROP TABLE students
      SQL
      DB[:conn].execute(sql)
    end

end
