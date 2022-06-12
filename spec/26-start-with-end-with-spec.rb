RSpec.describe 'Start with, End with matcher' do
    describe 'caterpillar' do
        it 'should check for substring at the beginning' do
            expect(subject).to start_with('cat')
            # expect(subject).to start_with('Cat')  <--- fail
        end
        it 'should check for substring at the end' do
            expect(subject).to end_with('llar')
        end
    end
    
    describe 'array' do
        subject { [3, 5, 9] }

        it 'should start with 3' do
            expect(subject).to start_with(3)
        end

        it 'should end with 9' do
            expect(subject).to end_with(9)
        end
    end

    describe 'Jorge' do
        it 'should start with J' do
           expect(subject).to start_with("J") 
        end
        it { is_expected.to end_with("e") }
    end
end

=begin

    The "start_with" and the "end_with" methods are used in order to verify the beginnind
    or the end from an array or string.

    As we can see in the example above, we are validating the beginning of each class.

=end
