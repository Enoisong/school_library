require './interface'
require './capitalize_decor'
require './trim_decor'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name, parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age > 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end
end
