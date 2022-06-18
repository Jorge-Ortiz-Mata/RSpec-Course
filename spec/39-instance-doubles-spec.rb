class Person
    def a
        sleep(3)
        "Hello World"
    end
end

RSpec.describe Person do

    describe 'regular double' do
        it 'can implement any method' do
            person = double(a: "Hello", b: 20)
            expect(person.a).to eq("Hello")
            expect(person.b).to eq(20)
        end
    end

    describe 'instance double' do
        it 'can only implement methods defined in the real class' do
            person = instance_double(Person)
            allow(person).to receive(:a).and_return("Hello World")
            allow(person).to receive(:b).and_return(20)
            expect(person.a).to eql("Hello World")
        end
    end
end