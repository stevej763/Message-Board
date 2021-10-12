require 'pg'

class GenericDAO
  def self.setup(db_name)
    puts "Connecting to db: #{db_name}"
    @connection = PG.connect :dbname => db_name
  end

  def self.current_connection
    @connection
  end

  def self.query(sql)
    puts @connection
    @connection.exec(sql)
  end
end