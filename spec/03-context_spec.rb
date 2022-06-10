RSpec.describe '#even? method' do

    context 'with even number' do
        it 'should return true' do
            expect(4.even?).to eq(true)
        end 
    end 

    context 'with odd number' do
        it 'should return false' do
            expect(5.even?).to eq(false)
        end 
    end

end

=begin
    
    Context is used in order to give better context of what is going on in our tests.
    It's an alias of describe and they do same thing.
    The method even? is a method that validates if a number is either even or odd.
    
=end