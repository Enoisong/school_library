def create_book
  print 'Title: '
  title = String(gets.chomp)
  print 'Author: '
  author = String(gets.chomp)
  book = Book.new(title, author)
  @books.push(book)
  puts "\nBook created successfully"
end

def list_all_books
  @books.each do |book|
    puts "Title: '#{book.title}', Author: '#{book.author}'"
  end
end
