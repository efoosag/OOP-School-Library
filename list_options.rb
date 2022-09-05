module ListOptions
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
