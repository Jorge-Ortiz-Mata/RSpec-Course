RSpec.describe Hash do
    subject(:bob) do
        { a: 1, b: 3, c: 4 }
    end

    it 'has two key value pairs' do
        expect(subject.length).to eq(3)
        expect(bob.length).to eq(3)
    end

    describe 'nexted example' do
        it 'has another test' do
            expect(subject.length).to eq(3)
            expect(bob.length).to eq(3)
        end
    end
end


=begin

    The subject method takes the class as its default value,
    but we can specify other values as an object as another
    value.

    In the first example, we verify the length of the subject class.

    Also, we can define an alias for the subject metho. Instead of
    writting "subject", we can wite its alias.

    This subject method is available for every describe child.

=end
