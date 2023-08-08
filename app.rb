require_relative 'student'
require_relative 'person'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
require_relative 'manage_people'
require_relative 'manage_book'
require_relative 'manage_rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end
end
