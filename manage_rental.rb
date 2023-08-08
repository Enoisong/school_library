def create_rental
  puts "\nSelect a book from the following list by number\n"
  @books.each_with_index do |book, index|
    book_title = book['title'] # Accessing title attribute from book hash
    book_author = book['author'] # Accessing author attribute from book hash
    puts "#{index}) Title: '#{book_title}', Author: '#{book_author}'"
  end
  selected_book = @books[gets.chomp.to_i]
  puts "\nSelect a person from the following list by number\n"
  @people.each_with_index do |person, index|
    puts "#{index}) [#{person['type']}] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
  end
  selected_person = @people[gets.chomp.to_i]
  puts 'Date (YYYY-MM-DD):'
  input_date = gets.chomp
  created_rental = {
    'date' => input_date,
    'book' => selected_book,
    'person' => selected_person
  }
  @rentals << created_rental
  puts 'Rental Created successfully'
end

def list_all_rentals
  puts "Rentals:\n"
  @rentals.each do |rental|
    person_name = rental['person']['name']
    person_id = rental['person']['id']
    puts "Name: #{person_name} Rented Id: #{person_id}"
  end
  puts "\nEnter the ID of the person whose rentals you want to view: "
  desired_rental_id = gets.chomp.to_i
  desired_rentals = @rentals.select { |rental| rental['person']['id'] == desired_rental_id }
  if desired_rentals.empty?
    puts "Rental not found with ID #{desired_rental_id}"
  else
    puts "\nBooks rented by person with ID #{desired_rental_id}:"
    desired_rentals.each do |rental|
      date = rental['date']
      book_title = rental['book']['title']
      book_author = rental['book']['author']
      puts "Date: #{date} Book '#{book_title}' by #{book_author}"
    end
  end
end
