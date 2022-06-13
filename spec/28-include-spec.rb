RSpec.describe 'Include' do
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('hot')
        end

        it { is_expected.to include('choco') }
    end 

    describe [10, 40, 20, 30] do
        it { is_expected.to include(20) }
    end

    describe ({name: "Jorge", age: 25}) do
        it 'checks for keys' do
            expect(subject).to include(:name, :age)
        end

        it 'checks for the keys value' do
            expect(subject).to include(name: "Jorge")
        end
    end
end

=begin

    The "include" method is implemented to check if an array, string or an object includes 
    certain values.

=end
