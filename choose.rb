require './create'

class Choose
  def initialize
    @books = []
    @persons = []
    @rentals = []
    @create = Create.new(@persons, @books, @rentals)
  end

  def choose_options
    puts ['Choose between options 1 - 7: ',
          '1 - List all books', '2 - List all people',
          '3 - Create a person',
          '4 - Create a book',
          '5 - Create a rental',
          '6 - List all rentals for a given person id',
          '7 - Exit']
  end
  
  def chosen_value(value)
    case value
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      @create.create_person
    when '4'
      @create.create_book
    when '5'
      @create.create_rental
    when '6'
      list_all_rental_by_id
    else
      puts 'Please enter a number between 1 and 7.'
    end
  end

  def list_all_books
    puts 'There are No Books.' if @books.empty?
    @books.each { |book| puts "Title: #{book.title} -> Author: #{book.author}" }
  end

  def list_all_people
    puts 'There is no record of any person.' if @persons.empty?
    @persons.each { |person| puts "Name: #{person.name} -> Age: #{person.age}, Id: #{person.id}" }
  end

  def list_all_rental_by_id
    puts 'Enter Person ID: '
    id = gets.chomp.to_i

    puts 'Rented Books:'
    @rentals.each do |rental|
      if rental.person.id == id
        puts "Person: #{rental.person.name} Date: #{rental.date}, Book: 6#{rental.book.title} by #{rental.book.author}"

      else
        puts
        puts 'No records found'
      end
    end
  end
end