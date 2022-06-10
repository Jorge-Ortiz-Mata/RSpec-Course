# Task. Think what would be the output of the next code.

RSpec.describe 'regular hooks' do

    before(:context) do
        puts 'A'
    end

    before(:example) do
        puts 'C'
    end

    after(:example) do
        puts 'D'
    end

    after(:context) do
        puts 'B'
    end

    it 'should compare strings' do
        expect('Hello').to eq('Hello')
    end

    it 'should compare numbers' do
        expect(4.76).to eq(4.76)
    end 
end

=begin

    This will be the result:
                                A
                                C
                                first it block
                                D
                                C
                                second it block
                                D
                                B

=end