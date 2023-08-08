require_relative 'load_data/load_book'
require_relative 'load_data/load_person'
require_relative 'load_data/load_rental'
require_relative 'student'
require_relative 'person'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
require_relative 'manage_people'
require_relative 'manage_book'
require_relative 'manage_rental'
require 'json'
# app
class App
  def initialize
    @books = load_books
    @people = load_people
    @rentals = load_rentals
    at_exit { save_data }
  end


  private

  def save_data
    save_to_json('json_files/books.json', @books)
    save_to_json('json_files/people.json', @people)
    save_to_json('json_files/rentals.json', @rentals)
  end

  def save_to_json(file_name, data)
    File.open(file_name, 'w') do |file|
      file.puts JSON.generate(data)
    end
  end
end
