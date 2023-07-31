require_relative 'Person'

class Student < Person
  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission, name)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
