class Classroom
    attr_reader :label, :students

    def initialize(label)
        @label = label
        @students = []
    end 

    def add_student(student)
        @students << student unless @students.include?(student)
        student.classroom = self
    end
end

