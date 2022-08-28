# frozen_string_literal: true

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
