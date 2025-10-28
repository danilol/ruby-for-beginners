class Ru
  require_relative '../lib/db'
  
  def self.query(sql, params = [])
    result = DbConnection.query(sql, params)
    result.map { |row| new(row) } 
  end
end