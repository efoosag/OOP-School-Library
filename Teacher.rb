require './Person'

class Teacher < Person
    def initialize(name, age, specialization)
        super(name, age)
        @specialization = specialization
    end

    def can_use_services?
        true
    end
end

t = Teacher.new('tunde', 5, 'math')
t.can_use_services()