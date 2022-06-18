RSpec.describe 'Allow method' do
    it 'can customize return value for methods on doubles' do
        calculator = double
        allow(calculator).to receive(:another_custom_method).and_return(10)
        expect(calculator.another_custom_method).to eql(10)
    end

    it 'can stub one or more methods on a real object' do
        arr = [1, 2, 3]
        allow(arr).to receive(:custom_method).and_return(10)
        expect(arr.custom_method).to eq(10)
    end

    it 'can return multiple values in secuence' do
        letters = double
        allow(letters).to receive(:other_method).and_return(:c, :b, true)
        expect(letters.other_method).to eq(:c)
        expect(letters.other_method).to eq(:b)
        expect(letters.other_method).to be true
    end
end

=begin

    In this method we are using the allow method with the double method too.
    This allows us to create custom methods with their return values.

    We can test it with arrays, hashes and variables.

=end
