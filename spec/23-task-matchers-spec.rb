RSpec.describe 'Task Machers' do

    context 'An object' do
        it 'should be empty' do
            expect({}).to be_empty
        end
    end

    context 'Each item' do
        it 'should be even' do
            expect([10, 20, 30]).to all(be_even)
        end
        it 'should be greatear or equal to 0' do
            expect([0, 1, 2]).to all(be >= 0)
        end
    end
    
end