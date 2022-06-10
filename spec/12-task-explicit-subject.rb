RSpec.describe Array do

    subject(:sally) do
        [25, 84]
    end

    it 'should be an array' do
        expect(sally.length).to eq(2)
        sally.pop()
        expect(sally.length).to eq(1)
    end

    it 'confirms sally is equal to the original array' do
        expect(sally).to eq([25, 84])
    end
end


=begin
    
    Define an array with the alias: Sally.
    Set values for the Sally array and make a couple examples
    veryfing its length.

    Add another example that compares the Sally value
    with the first value.
    
=end

