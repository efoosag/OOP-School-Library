require './person'
require './book'
require './rental'

describe Rental do
  context 'test rental class' do
    person = Person.new(25, 'Walter')
    book = Book.new('Water Fall', 'James Bond')
    rental = Rental.new('2022-05-13', book, person)

    it 'Rental person name should return Walter' do
      expect(rental.person.name).to eq 'Walter'
    end

    it 'Rental book title should be Water Fall' do
      expect(rental.book.title).to eq 'Water Fall'
    end

    it 'Rental book author should be James Bond' do
      expect(rental.book.author).to eq 'James Bond'
    end
  end
end
