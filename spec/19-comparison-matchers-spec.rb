RSpec.describe 'Comparison matchers' do
    it 'allows for comparison with built-in Ruby operators' do
        expect(10).to be > 5
        expect(10).to be == 10
        expect(10).to be < 20
        expect(20).to be >= 10
        expect(500).to be <= 1000
        expect(4).not_to be == 5
    end

    describe 100 do
        it {is_expected.to be == 100}
        it {is_expected.to be <= 200}
        it {is_expected.not_to be == 300}
        it {is_expected.to be >= 20}
    end
end


=begin

    Math operators. We can compare some certain values using math comparators.
    For this feature, we should use the be ot equal method.

=end
