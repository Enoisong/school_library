require 'rspec'
require_relative '../rental'

describe Rental do
  let(:date) { '2020-20-20' }
  let(:book) { { title: "life", author: "reko", rentals: [] } }
  let(:person) { { id: 1, name: 'racha', rentals: [] } }

  subject { Rentals.new(date, book, person) }

  describe '#initialize' do
    it 'adds the rental to the book rentals list' do
      expect(book[:rentals]).to be_empty
      subject
      expect(book[:rentals]).to contain_exactly(subject)  
    end

    it 'adds the rental to the person rentals list' do
      expect(person[:rentals]).to be_empty
      subject
      expect(person[:rentals]).to contain_exactly(subject) 
    end
  end
end
