require './teacher'

  describe Teachers do
  let(:name) { "Jane Isong" }
  let(:age) { 35 }
  let(:specialization) { "Medicine" }

  subject(:teacher) { described_class.new(name, age, specialization) }

  describe '#initialize' do
    it 'sets the name, age, and specialization' do
      expect(teacher.name).to eq(name)
      expect(teacher.age).to eq(age)
      expect(teacher.instance_variable_get(:@specialization)).to eq(specialization)
    end

    it 'inherits parent permission as true by default' do
      expect(teacher.instance_variable_get(:@parent_permission)).to be true
    end
  end

  describe '#can_use_services' do
    it 'returns true' do
      expect(teacher.can_use_services).to be true
    end
  end 
end
