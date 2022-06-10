RSpec.describe 'Not to method' do
    it 'checks that two values do not match' do
        expect(10).not_to eq(5)
    end    
    it 'checks that two strings do not match' do
        expect('Jorge').not_to eq('jorge')
    end
    it 'different arrays' do
        expect([2, 4]).not_to eq([2, 4, 5])
    end
end

=begin

    The ".not_to" method is the reverse of the ".to" method. This method compares 
    if the two values are not equal to each other.

=end