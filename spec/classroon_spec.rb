require './classroom'

describe Classroom do
  context 'To test classroom class'
  before :each do
    @classroom1 = Classroom.new('maths')
  end

  describe '#new' do
    it 'returns a new book object' do
      @classroom1.should be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it ' returns the correct classroom label' do
      @classroom1.label.should eql 'maths'
    end
  end

  describe 'test adding student to classroom' do
    it 'return the number of student in a classroom' do
      @classroom1.add_student('Mark')
      @classroom1.student.length.should == 1
    end
  end
end
