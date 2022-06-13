RSpec.describe 'Raise error' do

    def some_method
        x
    end

    it  'can check for specific error' do
        expect {some_method}.to raise_error(NameError)
    end

    it 'can check math error' do
        expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end

    class CustomError < StandardError; end

    it 'can check for a custom error' do
        expect  { raise CustomError }.to raise_error(CustomError)
    end

end

=begin

    The "raise_error" method is used in order to expect a certain error.
    In the example above, we declared a variable "x" without a value.
    
    So, we expect to have the error "NameError".
    We can also define our custom errors as we wish.

=end
