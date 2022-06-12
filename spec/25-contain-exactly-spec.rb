RSpec.describe 'Contain exactly matcher' do
    subject { [1, 2, 3, 4, 5] }
    let(:name) { "Jorge" }

    it 'checks all the exactly array' do
        expect(subject).to contain_exactly(1, 2, 3, 4, 5)
        expect(subject).to contain_exactly(2, 1, 4, 5, 3)
    end

    it 'checks all the name characters' do
        expect(name).to contain_exactly("Jorge")
    end

    it 'checks all the exaclty array(fail)' do
        expect(subject).to contain_exactly(1, 3, 4, 5)
    end

    it { is_expected.to contain_exactly(1, 2, 3, 4, 5) }
end

=begin

    The "contain_exactly" method is iomplemented in order to check the 
    value from a collection. 
    
    This works whether you want to check the values from an array without
    taking care of the order. 

    You can see some examples above in order to verify its functionality.

=end