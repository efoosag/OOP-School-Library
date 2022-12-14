require './create'
require './list_options'
require './storage/bookstore'
require './storage/personstore'
require './storage/rentalstore'

class Choose
  include BookStore
  include PersonStore
  include ListOptions
  include RentalStorage
  def initialize
    @books = upload_book
    @persons = upload_person
    @rentals = upload_rental_data
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
end
