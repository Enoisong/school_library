require_relative '../class_room'
require_relative '../student'

describe Classroom do
    context 'Tests for classroom class' do
        let(:classroom) { Classroom.new('A') }
        let(:student) { Student.new(20, 'A', 'Isong', parent_permission: false) }

        it "Should create new classroom obj" do
            expect(classroom).to be_an_instance_of(Classroom)
        end

        it 'Should set label correctly' do
            label = classroom.label
            expect(label).to eq 'A'
        end

        it 'add_student method should add student correctly' do
            classroom.add_student(student)
            expect(classroom.students).to include(student)
        end
    end
end