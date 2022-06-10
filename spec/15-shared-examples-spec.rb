class LengthClass 
    def length
        3
    end
end

RSpec.shared_examples 'Object length' do    # <--- Shared examples methods
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end
end

RSpec.describe Array do
    subject { [1, 2, 3] }
    include_examples 'Object length'    # <--- Include examples methods
end

RSpec.describe String do
    subject { 'abc' }
    include_examples 'Object length'    # <--- Include examples methods
end

RSpec.describe Hash do
    subject { {a: 1, b: 2, c: 3} }
    include_examples 'Object length'    # <--- Include examples methods
end

RSpec.describe LengthClass do
    subject { LengthClass.new }
    include_examples 'Object length'    # <--- Include examples methods
end

=begin

    We can shared examples (tests) between different groups without 
    writting duplicate code. 
    For this, we use the method:
        * shared_examples.
        * include_examples.

=end