RSpec.describe Array do
    it 'should check the length from the array' do
        expect(subject.length).to eq(0)
        subject.push('Hola')
        expect(subject.length).to eq(1)
    end
end

=begin 

    This taks proves the length from an Array class.
    As we can see here, one example checks whether the array length
    is equal to a specific value. 

    The subject variable it begins as an empty array and later on,
    we push a value inside of subject, comparing it again.

=end