require './student'

describe Student do
  context 'test student class' do
    student = Student.new(12, 'Samuel Tom', 'Grade 5', parent_permission: true)
   
    it 'Student name should be Samuel Tom' do
      expect(student.name).to eq 'Samuel Tom'
    end

    it 'Student Parent permission shoud be true' do
        expect(student.parent_permission).to be true
    end

    it 'Student classroom should be Grade 5' do
        expect(student.classroom).to eq 'Grade 5'
    end

    it 'Student play_hooky should be ¯\(ツ)/¯' do
        expect(student.play_hooky).to eq '¯\(ツ)/¯'
    end
  end
end