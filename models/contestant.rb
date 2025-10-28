require_relative 'ru.rb'

class Contestant < Ru
  attr_reader :id, :drag_name, :first_name, :last_name, :gender, :age, :city, :state, :country, :image_url, :created_at, :updated_at
  
  def initialize(row)
    @id = row['id']
    @drag_name = row['drag_name']
    @first_name = row['first_name']
    @last_name = row['last_name']
    @gender = row['gender']
    @age = row['age']
    @city = row['city']
    @state = row['state']
    @country = row['country']
    @image_url = row['image_url']
    @created_at = row['created_at']
    @updated_at = row['updated_at']
  end

  def self.all
    query("SELECT * FROM contestants;", [])
  end

  def self.first
    query("SELECT * FROM contestants limit 1;", []).first
  end

  def self.find_by_id(id)
    query("SELECT * FROM contestants WHERE id = $1;", [id]).first
  end

  # ilike is the postgresql case-insensitive like
  def self.find_by_drag_name(drag_name)
    query("SELECT * FROM contestants WHERE drag_name ilike $1;", [drag_name])
  end
end