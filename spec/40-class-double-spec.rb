class Duck
    def self.build
        # Bussiness logic to build a whole bunch of cards.
    end

    def self.other_method
        
    end
end

class Game 
    attr_reader :cards

    def start
        @cards = Duck.build
    end
end

RSpec.describe Game do
    it 'can only implement class methods defined on a class' do
        duck_klass = class_double(Duck, build: "Hello World", other_method: 200)

        expect(duck_klass).to receive(:build)
        expect(duck_klass).to receive(:other_method)
        subject.start
        expect(subject.cards).to eq("Hello World")
        expect(subject.cards).to eq(200)
    end
end