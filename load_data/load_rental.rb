require 'json'
def load_rentals
  return [] unless File.exist?('json_files/rentals.json')
  JSON.parse(File.read('json_files/rentals.json'))
end