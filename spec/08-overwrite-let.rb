class ProgrammingLanguage
    attr_reader :name

    def initialize(name = 'Ruby')
        @name = name
    end
end

RSpec.describe ProgrammingLanguage do
    let(:language){ ProgrammingLanguage.new('Phyton') }

    it 'should store the name of the language' do
        expect(language.name).to eq('Phyton')
    end

    context 'with no argument' do

        let(:language){ ProgrammingLanguage.new }
        
        it 'should be Ruby as the default value' do
            expect(language.name).to eq('Ruby')
        end
    end
end

=begin

    This practice consists on set a default value to the Programming Language
    whether the user didn't assign a vale. 

=end
