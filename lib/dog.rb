class Dog
  attr_accessor :name,:breed
  attr_reader :id
  
  def initialize(hash)
    @id=hash[:id]
    @name=hash[:name]
    @breed=hash[:breed]
  end
  
  def self.create_table
    sql=<<-SQL
    CREATE TABLE IF NOT EXISTS dogs(
            id)