def common_information
  print 'Age :'
  age = Integer(gets.chomp)
  print 'Name :'
  name = String(gets.chomp)
  [age, name]
end

def create_person
  puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
  options = {
    1 => method(:create_student),
    2 => method(:create_teacher)
  }
  choice = gets.chomp.to_i
  if options.key?(choice)
    options[choice].call
  else
    puts 'Incorrect input'
  end
end
#     case choice
#     when 1
#       create_student
#     when 2
#       create_teacher
#     else
#       puts 'Incorrect input'
#     end
#   end


def create_student
  print 'Age: '
  age = Integer(gets.chomp)
  print 'Name: '
  name = String(gets.chomp)
  print 'Has parent permission? [Y/N]: '
  permission = gets.chomp.downcase

  case permission
  when 'y'
    student = Student.new(nil, age, name, parent_permission: true)
  when 'n'
    student = Student.new(nil, age, name, parent_permission: false)
  else
    puts 'Incorrect input'
    return
  end

  @people << student
  puts "\nPerson created successfully"
end

def create_teacher
  print 'Age: '
  age = Integer(gets.chomp)
  print 'Name: '
  name = String(gets.chomp)
  print 'Specialization: '
  specialization = String(gets.chomp)
  teacher = Teacher.new(name, age, specialization)
  @people << teacher
  puts 'Person created successfully'
end

def list_all_people
  @people.each do |person|
    puts "[#{person.class}] Name: #{person.name}, Id: #{person.id}, Age: #{person.age}"
  end
end
