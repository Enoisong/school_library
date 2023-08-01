class Person
  attr_accessor :name, :rentals

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(book, date)
    rental = Rental.new(date, book, self)
    @rentals << rental
    book.rentals << rental
    rental
  end
end
