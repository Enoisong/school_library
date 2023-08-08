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

def create_student
  age, name = common_information
  print 'Has parent permission? [Y/N]: '
  permission = gets.chomp.downcase

  case permission
  when 'y'
    student = { 'type' => 'Student', 'id' => generate_unique_id, 'name' => name, 'age' => age,
                'parent_permission' => true, 'classroom' => 'classroom' }
  when 'n'
    student = { 'type' => 'Student', 'id' => generate_unique_id, 'name' => name, 'age' => age,
                'parent_permission' => false, 'classroom' => 'classroom' }
  else
    puts 'Incorrect input'
    return
  end

  @people << student
  puts "\nStudent created successfully"
end

def create_teacher
  age, name = common_information
  print 'Specialization: '
  specialization = String(gets.chomp)
  teacher = { 'type' => 'Teacher', 'id' => generate_unique_id, 'name' => name, 'age' => age,
              'specialization' => specialization }
  @people << teacher
  puts 'Teacher created successfully'
end

def generate_unique_id
  Time.now.to_i
end

def list_all_people
  @people.each do |person|
    if person.is_a?(Hash) # Check if the object is a hash
      puts "[#{person['type']}] Name: #{person['name']}, Id: #{person['id']}, Age: #{person['age']}"
    else
      puts "Invalid person data: #{person}"
    end
  end
end
