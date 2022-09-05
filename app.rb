require './choose'

class App
  def initialize
    @persons = []
    @books = []
    @rentals = []
    @choose = Choose.new
  end

  def start_app
    until @choose.choose_options
      value = gets.chomp
      if value == '7'
        puts 'Thank You for patronage!'
        break
      end

      @choose.chosen_value(value)
      @choose.save_book
    end
  end
end
