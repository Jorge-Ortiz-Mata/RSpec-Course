RSpec.describe 'shorthand syntax' do
    subject { 5 }

    context 'with classic syntax' do
        it 'should equal 5' do
            expect(subject).to eq(5)
        end
    end

    context 'with one-lier syntax' do
        it { is_expected.to eq(5) }
    end
end

=begin

    We can write the it block in one line instead of using 3 lines of code.

    As you can see, in the first example, we have declare "subject" on line 6,
    but in the second example we don't have to do it anymore. 

    We can write our test in one line but it only applies with the subject method.

    Before: 
        it 'should equal 5' do
                expect(subject).to eq(5)
        end

    After: 
        it { is_expected.to eq(5) }

=end