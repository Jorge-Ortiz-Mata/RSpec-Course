RSpec.describe 'All matcher' do

    let(:my_array){ [1, 3, 5, 7] }

    it 'allows for aggreagate checks' do
       expect(my_array).to all(be_odd)
       expect(my_array).to all(be < 10)
       expect(my_array).not_to include(2)
    end

    describe [3, 4, 1, 7] do
        it { is_expected.to all(be < 5) }
    end

end



=begin

    The method "all" allows us to test each value from an specific
    object or array to match to an assert. 

    Instead of using the "Each" method, we will use the "All" method.

=end