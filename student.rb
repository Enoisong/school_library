require 'pry'

require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name, parent_permissionn: true)
    binding.pry  # Adding breakpoint
    super(age, name, parent_permissionn: parent_permissionn)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
