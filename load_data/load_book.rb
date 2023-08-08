require 'json'

def load_books
  return [] unless File.exist?('json_files/books.json')

  JSON.parse(File.read('json_files/books.json'))
end
