RSpec.describe 'Predicate Methods' do
    it 'can be tested with Ruby Methods' do
        expect(0).to be_zero
        expect(15).not_to be_zero

        expect(10).to be_even
        expect(11).to be_odd

        expect([1,2]).to be_include(1)

        expect([]).to be_empty
    end

    describe 100 do
        it { is_expected.to be_even }
        it { is_expected.not_to be_zero }
    end
end

=begin

    There are some simple Ruby methods where give two results: TRUE or FALSE, such as:
        * even.
        * zero.
        * include.
        * empty.

    You can use this Ruby methods inside of your tests by doing the examples above.

=end
