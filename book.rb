class Book
  attr_reader :rental
  attr_accessor :title, :author, :id

  def initialize(title, author)
    @id = id || Random.rand(1...1000)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, date)
    Rental.new(person, date, self)
  end
end
