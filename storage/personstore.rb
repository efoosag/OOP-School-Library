require 'json'
require './teacher'
require './student'

module PersonStore
  def upload_person
    personstore = []
    file = File.open('./data/person.json')

    if File.exist?(file) && File.read(file) != ''
      person_data = JSON.parse(File.read(file))
      person_data.each do |person|
        personstore << if person['className'] == 'Student'
                         Student.new(person['age'],
                                     person['name'],
                                     person['parent_permission'])
                       else
                         Teacher.new(person['name'],
                                     person['age'],
                                     person['specialization'])
                       end
      end
    else
      File.write(file, '[]')
    end
    personstore
  end

  def save_person
    personstore = []
    @persons.each do |person|
      if person.is_a?(Student)
        personstore << { id: person.id,
                         age: person.age,
                         name: person.name,
                         parent_permission: person.parent_permission,
                         classroom: person.classroom,
                         className: person.class }
      end

      if person.is_a?(Teacher)
        personstore << { id: person.id,
                         age: person.age,
                         name: person.name,
                         specialization: person.specialization,
                         className: person.class }
      end
      File.write('./data/person.json', personstore.to_json)
    end
  end
end
