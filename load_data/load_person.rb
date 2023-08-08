require 'json'

def load_people
  return [] unless File.exist?('json_files/people.json')

  JSON.parse(File.read('json_files/people.json'))
end
