require './nameable'

describe TrimmerDecorator do
  context 'To test the Trimmerdecorator class'
  before :each do
    @person = Person.new(25, 'schwarzenegger')
    @student_name = TrimmerDecorator.new(@person)
  end

  describe 'To test if the name will be trimmed to length of 10' do
    it 'returns a name that is not more than 10 in length' do
      @student_name.correct_name.length.should <= 10
    end
  end
end
