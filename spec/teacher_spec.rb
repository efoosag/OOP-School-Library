require './teacher'

describe Teacher do
  context 'test Teacher class' do
    teacher = Teacher.new(45, 'Mark Jon', 'English')

    it 'Teacher name should be Mark Jon' do
      expect(teacher.name).to eq 'Mark Jon'
    end

    it 'Teacher age shoud be 45' do
      expect(teacher.age).to be 45
    end

    it 'Teacher specialization should be English' do
      expect(teacher.specialization).to eq 'English'
    end

    it 'Teacher can use services should be true' do
      expect(teacher.can_use_services?).to be true
    end
  end
end
