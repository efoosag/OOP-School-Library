require './nameable'
require './person'

describe CapitalizeDecorator do
  context 'Test CapitalizeDecorator class' do
    it 'should return Samuel' do
      person = Person.new(25, 'samuel')
      capitalizer = CapitalizeDecorator.new(person)
      expect(capitalizer.correct_name).to eq 'Samuel'
    end
  end
end