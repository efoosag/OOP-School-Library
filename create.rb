require './require_input'

class Create
  def initialize(persons = 'unknown', books = 'unknown', rentals = 'unknown')
    @persons = persons
    @books = books
    @rentals = rentals
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
    age, name, parent_permission = grab_student_data
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
    age, name, specialization = grap_teacher_data
    teacher = Teacher.new(age, name, specialization)
    @persons.push(teacher)
    puts '1 Teacher Added'
  end

  def create_book
    title, author = grap_book_data
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
end
