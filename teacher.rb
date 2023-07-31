require_relative 'Person'

class Teacher < Person
  def initialize(id, age, _speciaization, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission: parent_permission, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
