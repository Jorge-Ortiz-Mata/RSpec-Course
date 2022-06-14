class SoccerTeam
    def team
        'Real Madrid'
    end

    def soccer_player
        'Cristiano Ronaldo'
    end

    def purchase(number)
        "Real Madrid purschased Gareth Bale for #{number} dollars."
    end
end

RSpec.describe SoccerTeam do
    it 'confirms that an object can respond to a method' do
        expect(subject).to respond_to(:team)
        expect(subject).to respond_to(:soccer_player, :purchase)
    end

    it 'confirms that an object can respond to a method with arguments' do
        expect(subject).to respond_to(:purchase)
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    it { is_expected.to respond_to(:soccer_player) }
    it { is_expected.to respond_to(:purchase).with(1).arguments }
end

=begin
    
    This method allow us to check if an object responds to an specific
    method.

    This is useful whether we want to validate if our asserts are comunicating
    with the methods stablish in our class.
    
=end