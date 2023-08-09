require 'rspec'
require_relative '../person'

describe Person do
    let(:person) { Person.new(23, 'sdf') }
    let(:book) { { title: "web", author: "alijan", rentals: [] } }

    describe '#initialize' do
    it 'assigns a random ID' do
        expect(person.id). to be_an(Integer)
    end

    it 'assigns the name' do
        expect(person.name).to eq("sdf")
    end

    it 'assigns the age' do
        expect(person.age).to eq(23)
    end

    it 'initializes an empty rentals list' do
        expect(person.rentals).to be_empty
    end

    it 'sets parent permission to be true by default' do
        expect(person.instance_variable_get(:@parent_permission)).to be_truthy
    end

    it 'sets parent permission based on argument' do
        minor = Person.new(17, "Jane Isong", parent_permission: false)
        expect(minor.instance_variable_get(:@parent_permission)).to be_falsey
    end
end

describe '#can_use_services?' do
it 'returns true if person is of age' do
    expect(person.can_use_services?).to be_truthy
end

it 'returns true if person has parent permission' do
    minor = Person.new(17, "Jane Isong")
    expect(minor.can_use_services?).to be_truthy
end

it 'returns false if person is a minor without parent permission' do
    minor = Person.new(17, "Jane Isong", parent_permission: false)
    expect(minor.can_use_services?).to be_falsey
  end
end

describe '#correct_name' do
it 'returns the correct name' do
    expect(person.correct_name).to eq("sdf")
   end
  end
end