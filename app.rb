require './book'
require './person'
require './student'
require './teacher'
require './rental'
require './options'

class App
  include Options
  def initialize
    @persons = []
    @books = []
    @rentals = []
  end

  def start_app
    until choose_options
      value = gets.chomp
      if value == '7'
        puts 'Thank You for patronage!'
        break
      end

      chosen_value(value)
    end
  end  
end
