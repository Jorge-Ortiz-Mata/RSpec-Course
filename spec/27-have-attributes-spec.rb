class Person
    attr_reader :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

RSpec.describe 'Have attributes' do
    describe Person.new('Jorge', 23) do

        let(:user) { Person.new('Ana', 21) }

        it 'should have the name attribute' do
            expect(subject).to have_attributes(name: 'Jorge')
        end

        it { is_expected.to have_attributes(age: 23) }

        it 'checks all its attributes' do
            expect(user).to have_attributes(name: 'Ana', age: 21)
        end
    end
end

=begin

   The "have attributes" method allows you to check if an object has its values and keys.
   You have to provide the methods's name, the key and its value. 

=end
