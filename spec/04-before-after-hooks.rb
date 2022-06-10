RSpec.describe 'Hello' do

    before(:context) do
        puts 'BEFORE CONTEXT 1'
    end

    before(:example) do
        puts "Before example 2"
    end

    after(:context) do
        puts 'AFTER CONTEXT 1'
    end

    after(:example) do
        puts "After example 2"
    end



    it 'verifies an adition' do
        expect(10 + 10).to eq(20)
    end

    it 'verifies a substraction' do
        expect(20 - 5).to eq(15)
    end
end

=begin

    The Before Hook is executed before of each example, and the after hook
    is executed after the example. We can set a couple of before and after blocks, and the will
    execute as the next proccess:

        before(CONTEXT) ---> before(example) ---> it(block) ---> after(example) ---> before(example) ---> it(block) ---> after(example) ---> after(CONTEXT).

        BEFORE CONTEXT 1
        Before example 2
        After example 2
        Before example 2
        After example 2
        AFTER CONTEXT 1

    We can use this logic in order to display messages or notification on each example.

=end