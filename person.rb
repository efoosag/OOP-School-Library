require './nameable'

class Person < Nameable
  attr_reader :id, :rental
  attr_accessor :name, :age, :parent_permission

  def initialize(age, name = `Unknown`, parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_services?
    with_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def with_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
