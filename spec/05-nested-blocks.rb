RSpec.describe 'Nested Hooks' do

    before(:context) do
        puts "OU-CONTEXT"
    end
    
    before(:example) do
        puts "OU-EXAMPLE"
    end

    it 'does basic math' do
        expect(3*3).to eq(9)
        puts "Here is the MULT"
        puts "\n"
    end

    context 'with condition A' do
        before(:context) do
            puts "IN-CONTEXT"
        end
        
        before(:example) do
            puts "IN-EXAMPLE"
        end
        
        it 'does another basic math' do
            expect(3-1).to eq(2)
            puts "Here is the SUBS"
            puts "\n"
        end

        it 'does more basic math' do
            expect(3+1).to eq(4)
            puts "Here is the ADD"
            puts "\n"
        end

        it 'does more basic math' do
            expect(10/2).to eq(5)
            puts "Here goes the DIV"
            puts "\n"
        end
    end
end 


=begin

    OU-CONTEXT --> OU-EXAMPLE --> MULT --> IN-CONTEXT --> OU-EXAMPLE --> IN-EXAMPLE --> SUBS --> OU-EXAMPLE --> IN-EXAMPLE --> ADD

=end
