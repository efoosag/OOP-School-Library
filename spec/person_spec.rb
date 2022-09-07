require './person'
require './book'
require './rental'

describe Person do
  context 'test person class' do
    person1 = Person.new(25, 'Walter')
    person2 = Person.new(12, 'Samuel Tom', parent_permission: false)
    book = Book.new('Water Fall', 'James Bond')
    rental = Rental.new('2022-05-13', book, person2)

    it 'Person1 name should return Walter' do
      expect(person1.name).to eq 'Walter'
    end

    it 'Person1 age should return 25' do
      expect(person1.age).to eq 25
    end

    it 'Person2 can_use_service should return false' do
      expect(person2.can_use_services?).to be false
    end

    it 'Person2 correct_name should return Samuel Tom' do
      expect(person2.correct_name).to eq 'Samuel Tom'
    end

    it 'Book title should return Water Fall' do
      expect(rental.book.title).to eq 'Water Fall'
    end

    it 'Person2 parent_permission should return false' do
      expect(person2.parent_permission).to be false
    end

    it 'Person2 with_age should return false' do
      expect(person2.send(:with_age?)).to be false
    end
  end
end
