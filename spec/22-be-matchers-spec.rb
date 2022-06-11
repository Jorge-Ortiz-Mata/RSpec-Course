RSpec.describe 'Be matchers' do
    it 'can test for truthiness' do
        expect(3).to be_truthy
    end

    it 'can test for falsiness' do
        expect(false).to be_falsy
        expect(nil).to be_falsy
    end

    it 'can test for nil' do
        expect(nil).to be_nil
    end

    let(:my_hash) { {a: 3} }
    it 'tests values from a hash' do
        expect(my_hash[:v]).to be_nil
    end
end

=begin

    The truthiness assert passess only if we assign any type o value. It could be an array, a hash, integer, string, etc.

    The falsiness assert passess only if we test either as false or nil. 

    The nil assert passess only if we test using a nil value, such as verifying the value's key.

=end