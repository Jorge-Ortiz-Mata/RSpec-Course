RSpec.shared_context 'common' do  # <--- Shared context methods.
    before do
        @food = []
        puts "This is the FOOD"
    end

    def some_helper
        5
    end

    let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'First example group' do
    include_context 'common'    # <--- Include context methods.

    it 'should be an empty array' do
        expect(some_variable).to eq([1, 2, 3])
    end

    it 'should return 5' do
        expect(some_helper).to eq(5)
    end
end

=begin

    As well with shared examples, we can do the same functionality with shared_context.
    This method allows us to include more specific information such as variables, methods,
    and more stuff. 
        * shared_context.
        * include_context.

=end