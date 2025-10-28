# lib/db_connection.rb
require "pg"
require "dotenv/load"  # loads .env automatically

class DbConnection
  def self.query(sql, params = [])
    connect do |conn|
      conn.exec_params(sql, params)
    end
  end

  def self.connect
    conn = PG.connect(
      dbname:   ENV["DB_NAME"],
      user:     ENV["DB_USER"],
      password: ENV["DB_PASSWORD"],
      host:     ENV["DB_HOST"] || "localhost",
      port:     ENV["DB_PORT"] || 5432
    )   

    if block_given?
      begin
        yield conn
      ensure
        conn.close
      end
    else
      conn
    end
  end
end