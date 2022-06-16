RSpec.describe 'Compound method' do
    context 'Checks a number' do
        subject { 100000 }

        it 'is odd' do
            expect(subject).to be_even 
        end

        it 'is greater than 50' do
            expect(subject).to be > 5
        end

        it 'should check both in one line' do
            expect(subject).to be_even.and be > 20
        end
    end

    context 'Verify values from an array' do
        subject { [3, 6, 10] }

        it 'checks for some certain values' do
            expect(subject.sample).to eq(3).or eq(6).or eq(10)
        end

        it { is_expected.to include(3).and include(6) }
    end
end