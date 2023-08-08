def create_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  book = { 'title' => title, 'author' => author } # Create a hash for the book
  @books.push(book)
  puts "\nBook created successfully"
end

def list_all_books
  @books.each do |book|
    book_title = book['title'] # Access title attribute from book hash
    book_author = book['author'] # Access author attribute from book hash
    puts "Title: '#{book_title}', Author: '#{book_author}'"
  end
end
