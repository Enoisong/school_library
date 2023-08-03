require_relative 'corrector'
require_relative 'rental'

class Person 
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age:, name: 'Unknown', parent_permission: true) 
    @id = Random.rand(1..1000)
    @corrector = Corrector.new
    @name = validate_name(name)
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def validate_name(name)
    @corrector.correct_name(name)
  end

  def add_rental(book, date)
    rental = Rental.new(date, self, book)
    @rentals << rental
    rental
  end
end
