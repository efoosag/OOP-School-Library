def grap_book_data
  puts 'Add Book'
  puts 'Enter Title: '
  title = gets.chomp
  puts 'Enter Author: '
  author = gets.chomp

  [title, author]
end

def grap_teacher_data
  puts 'Add Teacher'
  print 'Enter Teacher Age: '
  age = gets.chomp.to_i
  print 'Enter Teacher Name: '
  name = gets.chomp
  print 'Enter Teacher Specialization: '
  specialization = gets.chomp
  [age, name, specialization]
end

def grab_student_data
  puts 'Add Student'
  puts 'Enter Student Age: '
  age = gets.chomp.to_i
  puts 'Enter Student Name: '
  name = gets.chomp
  puts 'Parent Permission? [Y/N]: '
  parent_permission = gets.chomp.downcase

  [age, name, parent_permission]
end
