 require_relative 'person'

 class Student < Person
  attr_reader :classroom

  def initialize(age:, name: 'Unknown', parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = nil
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
