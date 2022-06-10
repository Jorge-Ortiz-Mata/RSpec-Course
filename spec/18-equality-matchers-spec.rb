RSpec.describe 'Equality matchers' do
    let(:a) { 3.000000000 }
    let(:b) { 3 }

    describe 'eq matcher' do
        it 'tests for values' do
            expect(a).to eq(3)
            expect(b).to eq(3.000000000)
            expect(a).to eq(b)
        end
    end

    describe 'eql matcher' do
        it 'test for data types' do
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.000000)
            expect(a).not_to eql(b)
        end
    end

    describe 'equal and be matcher' do
        let(:c) { [1, 2, 3] }
        let(:d) { [1, 2, 3] }
        let(:e) { c }

        it 'cares about object identity' do
            expect(c).to eq(d)
            expect(c).to eql(d)
            expect(c).to equal(e)
            expect(c).not_to equal(d)
            expect(c).to be(e)
            expect(c).not_to be(d)
            expect(c).not_to be([1, 2, 3])
        end
    end
end

=begin

    * The eq matcher only compares that both have the same value.
    * The eql matcher compares if both have the same value and have the same class.

=end
