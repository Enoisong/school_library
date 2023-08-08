def create_rental
  puts "\nSelect a book from the following list by number\n"
  @books.each_with_index do |book, index|
    puts "#{index}) Title: '#{book.title}', Author: '#{book.author}'"
  end
  selected_book = @books[gets.chomp.to_i]
  puts "\nSelect a person from the following list by number\n"
  @people.each_with_index do |person, index|
    puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  selected_person = @people[gets.chomp.to_i]
  puts 'Date (YYYY-MM-DD):'
  input_date = gets.chomp
  created_rental = Rental.new(input_date, selected_person, selected_book)
  @rentals << created_rental
  puts 'Rental Created successfully'
end

def list_all_rentals
  puts "Rentals:\n"
  @rentals.each do |rental|
    puts "Name: #{rental.person.name} Rented Id: #{rental.person.id}"
  end
  puts "\nEnter the ID of the person whose rentals you want to view: "
  desired_rental_id = gets.chomp.to_i
  desired_rentals = @rentals.select { |rental| rental.person.id == desired_rental_id }

  if desired_rentals.empty?
    puts "Rental not found with ID #{desired_rental_id}"
  else
    puts "\nBooks rented by person with ID #{desired_rental_id}:"
    desired_rentals.each do |rental|
      puts "Date: #{rental.date} Book '#{rental.book.title}' by #{rental.book.author}"
    end
  end
end
