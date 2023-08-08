require_relative 'app'
class View
  puts "\nWelcome to School Library App!\n\n"
  def runner
    app = App.new
    loop do
      options
      choice = gets.chomp.to_i
      handle_input(choice, app)
    end
  end

  def options
    puts "\nPlease choose an option by entering a number:"
    puts "\n1 - List all books"
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts "7 - Quit\n"
    puts "\n"
  end

  def handle_input(choice_input, app)
    actions = {
      1 => :list_all_books,
      2 => :list_all_people,
      3 => :create_person,
      4 => :create_book,
      5 => :create_rental,
      6 => :list_all_rentals
    }

    action = actions[choice_input]
    if action
      app.send(action)
    elsif choice_input == 7
      puts 'Exited. Have a nice day!'
      exit
    else
      puts 'Invalid option'
    end
  end
end
