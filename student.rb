class Student
  attr_accessor :name, :classroom, :rentals

  def initialize(name)
    @name = name
    @classroom = nil
    @rentals = []
  end

  def join_classroom(classroom)
    @classroom = classroom
    classroom.students << self
  end
end
