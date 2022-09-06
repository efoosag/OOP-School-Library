require 'pry'
module ListOptions
  def list_all_books
    puts 'There are No Books.' if @books.empty?
    @books.each { |book| puts "Id: #{book.id} Title: #{book.title} -> Author: #{book.author}" }
  end

  def list_all_people
    puts 'There is no record of any person.' if @persons.empty?
    @persons.each { |person| puts "Name: #{person.name} -> Age: #{person.age}, Id: #{person.id}" }
  end

  def list_all_rental_by_id
    puts 'Enter Person ID: '
    id = gets.chomp.to_i

    puts 'Rented Books:'
  
  rented_book = @rentals.select {|rental| rental["id"] == id }
 if rented_book.length.zero?
  puts "No record found"
 else
  rented_book.each do |rental|
    puts "Person: #{rental["name"]} Date: #{rental["date"]}, Book: #{rental["title"]} by #{rental["author"]}"
  end
end
end
end
