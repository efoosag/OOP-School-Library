require 'json'
require './book'

module BookStore
  def upload_book
    bookstore = []
    book_file = File.open('./data/book.json')
    if File.exist?(book_file) && File.read(book_file) != ''
      data = JSON.parse(book_file.read)
      data.each do |book| 
        bookstore << Book.new(book['title'], book['author'])
      end
    else
      File.write(book_file, '[]')
    end
    bookstore
  end

  def save_book
    bookstore = []
    @books.each do |book|
      bookstore << {id: book.id, title: book.title, author: book.author}
    end 
    File.write('./data/book.json', bookstore.to_json) 
  end
end