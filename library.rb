require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'rental'

 # Creating classroom and students
 classroom = Classroom.new('Biology Class') 
 student1 = Student.new('Enobong')
 student2 = Student.new('Isong')

 # Adding students to the classroom
 classroom.add_student(student1)
 classroom.add_student(student2)

 # Creating books and rentals
 book1 = Book.new('Biology Exploring Life', 'Neil Campbell')
 book2 = Book.new('The Unity and Diversity of Life', 'Cecie Starr') 
 book1.add_rental(student1, '2023-08-01')
 book2.add_rental(student2, '2023-08-15')

 # Printing classroom information
 puts "Classroom: #{classroom.label}"
 puts 'Students in Classroom:'
 classroom.students.each do |student|
    puts "- #{student.name}"
 end
 
 # To get rentals for each student
 puts "\nRentals:"
 classroom.students.each do |student|
    puts "#{student.name} has rented:"
    student.rentals.each do |rental|
        puts "- #{rental.book.title} (Date: #{rental.date})"
    end
end