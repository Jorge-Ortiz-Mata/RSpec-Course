class Card 
    attr_accessor :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end

RSpec.describe Card do

    #before do      # -> This method will be execute on each example.
    #    @card = Card.new('Ace', 'Spades')
    #end

    #def my_card_method
    #    Card.new('Ace', 'Spades')
    #end

    let(:card){
        Card.new('Ace', 'Spades')
    }

#    let(:x){4}
#    let(:y){3}
#    let(:z){x + y}

    it 'has a type' do
#        puts z
        expect(card.suit).to eq('Ace')
        card.suit = 'King'
        expect(card.suit).to eq('King')
    end
    it 'has rank as Spades' do
        expect(card.rank).to eq('Spades')
    end
    it 'has a custom error message' do 
        variable = 2
        expect(variable).to eq(2), "\n\n MESSAGE: The variable #{variable} is different from 2. \n\n"
    end
end


=begin

    For good practices, is better to use let instead of the before action. The before action is executed on each it block.
    The let method is only executed once the method "it" required it.

    You can define self methods but, it isn't a good way to use them, because it won't allow you to get a different later on.
    
    The attr_accessor allows you to change the object values in your tests as you wish. You can set different values within 
    different periods.
    
=end


