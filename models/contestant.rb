require_relative 'ru.rb'

class Contestant < Ru
  def self.all
    query("SELECT * FROM contestants;", [])
  end

  def self.first
    query("SELECT * FROM contestants limit 1;", [])
  end

  def self.find_by_id(id)
    query("SELECT * FROM contestants WHERE id = $1;", [id])
  end

  # ilike is the postgresql case-insensitive like
  def self.find_by_drag_name(drag_name)
    query("SELECT * FROM contestants WHERE drag_name ilike $1;", [drag_name])
  end
end