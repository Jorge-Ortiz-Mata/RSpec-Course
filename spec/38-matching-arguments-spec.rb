RSpec.describe 'Matching arguments' do
    it 'can return different values depending on the arguments' do
        numbers = double

        allow(numbers).to receive(:first).with(no_args).and_return(1)
        allow(numbers).to receive(:first).with(1).and_return([1])
        allow(numbers).to receive(:first).with(2).and_return([1, 2])
        allow(numbers).to receive(:first).with(be > 4).and_return([1, 2, 4])

        expect(numbers.first).to eql(1)
        expect(numbers.first(1)).to eql([1])
        expect(numbers.first(2)).to eql([1, 2])
        expect(numbers.first(50000)).to eql([1, 2, 4])

    end
end