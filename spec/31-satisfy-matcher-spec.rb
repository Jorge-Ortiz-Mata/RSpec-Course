RSpec.describe 'Satisfy matcher' do

    context 'Palyndrome word' do
        subject { "reconocer" }
        
        it 'is a palindrome' do
            expect(subject).to satisfy { |value| value == value.reverse }
        end
    end

    context 'Checking a different value' do
        subject { 100 }

        it 'is greater than 50' do
            expect(subject).to satisfy { |num| num > 90 }
        end
    end

    context 'Adding a custom error message' do
        let(:user) { {name: "Jorge", age: 25, location: "Mexico"} }

        it 'checks if the user is from Mexico' do
            expect(user[:location]).to satisfy("be Mexico.") do |value| 
                value == "Mexico"
            end
        end
    end

    context 'Making more testing' do
        subject { [20, 45, 27, 49, 22, 54] }

        it 'should be more than 30' do
            expect(subject[0]).to satisfy("be more than 30") do |value|
                subject[0] > 5
            end
        end
    end

end


=begin

    This method allows us to create our own asserts or expectations.

    We can add our own code in order to verify something that takes more than one line of code.
    Something to keep in mind is that if the result is true, it passes, if it's not, the
    assert will fail.

    * true => good.
    * false => bad.

    We can add messages in order to make the error easy to read.

=end
