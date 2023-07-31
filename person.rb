class Person
    attr_reader :id, :name , :age

    def initialize(name = "unknown", age = 0, parent_permission = true)
        @id = Random.rand(1..2000)
        @name = name
        @age = age
        @parent_permission = parent.permission 
    end
    
    def name=(new_name)
        @name = new_name
    end

    def age=(new_age)
        @age = new_age
    end

    def can_use_services?
        of_age? || @parent_permission
    end

    private

    def of_age?
        @age >= 18
    end
end
       