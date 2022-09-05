module Options 
  def list_all_books
    puts 'There are No Books.' if @books.empty?
    @books.each { |book| puts "Title: #{book.title} -> Author: #{book.author}" }
  end

  def list_all_people
    puts 'There is no record of any person.' if @persons.empty?
    @persons.each { |person| puts "Name: #{person.name} -> Age: #{person.age}, Id: #{person.id}" }
  end

  def create_person
    puts 'To create a student, press 1, to create a teacher, press 2 : '
    status = gets.chomp

    case status
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'You can only choose 1 for student or 2 for teacher'
    end
  end

  def create_student
    puts 'Add Student'
    puts 'Enter Student Age: '
    age = gets.chomp.to_i
    puts 'Enter Student Name: '
    name = gets.chomp
    puts 'Parent Permission? [Y/N]: '
    parent_permission = gets.chomp.downcase
    case parent_permission
    when 'n'
      student = Student.new(age, name, 'undefined', parent_permission: false)
      @persons << student
      puts 'Student doesnt have parent permission, cant rent books'
    when 'y'
      student = Student.new(age, name, 'undefined', parent_permission: true)
      @persons << student
      puts 'One Student Added'
    end
  end

  def create_teacher
    puts 'Add Teacher'
    print 'Enter Teacher Age: '
    age = gets.chomp.to_i
    print 'Enter Teacher Name: '
    name = gets.chomp
    print 'Enter Teacher Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, name, specialization)
    @persons.push(teacher)
    puts '1 Teacher Added'
  end

  def create_book
    puts 'Add Book'
    puts 'Enter Title: '
    title = gets.chomp
    puts 'Enter Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts "Book by #{author} is created."
  end

  def create_rental
    puts 'Select book for rent by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }

    book_id = gets.chomp.to_i

    puts 'Select person by number'
    @persons.each_with_index do |person, index|
      puts "#{index}) [#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_id = gets.chomp.to_i

    puts 'Date: '
    date = gets.chomp.to_s
    rental = Rental.new(date, @books[book_id], @persons[person_id])
    @rentals << rental

    puts 'Rental Record created'
  end

  def list_all_rental_by_id
    puts 'Enter Person ID: '
    id = gets.chomp.to_i

    puts 'Rented Books:'
    @rentals.each do |rental|
      if rental.person.id == id
        puts "Person: #{rental.person.name} Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"

      else
        puts
        puts 'No records found'
      end
    end
  end
end