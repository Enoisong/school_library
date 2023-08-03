class Rental
  attr_accessor :date
  attr_reader :person, :book

  def initialize(date, book, person)
    @date = date
    @person = person
    @book = boook
    person.rentals << self
    book.rentals << self
  end
end
