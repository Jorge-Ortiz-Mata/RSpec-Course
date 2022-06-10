class School
    attr_reader :name, :students

    def initialize(name, students)
        @name = name
        @students = students
    end
end

RSpec.describe School do
    it 'has a name' do
      school = School.new('Beverly Hills High School', [])
      expect(school.name).to eq('Beverly Hills High School')
    end
  
    it 'should start off with no students' do
      school = School.new('Notre Dame High School', [])
      expect(school.students).to eq([])
    end
end

=begin 

    The attr_reader allows to not modify the values given at the beginnig of the test. 
    You can create the object, but at the moment that is used, you can't modify their values.
    In this example, we create two separate School object on each it block.

=end
