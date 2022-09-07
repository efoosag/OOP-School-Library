require './book'
require './person'
require './rental'

describe Book do
  context 'test book class' do
    book = Book.new('Water Fall', 'James Bond')
    person = Person.new(25, 'Walter')
    rental = Rental.new('2022-05-13', book, person)
    it 'Book Person should return Walter' do
      expect(rental.person.name).to eq 'Walter'
    end
    it 'Book title should return Water Fall' do
      expect(book.title).to eq 'Water Fall'
    end
    it 'Book author should return James Bond' do
      expect(book.author).to eq 'James Bond'
    end
  end
end
