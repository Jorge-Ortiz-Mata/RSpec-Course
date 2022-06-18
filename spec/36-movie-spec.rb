class Actor 
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def act
        "I love you, baby"
    end

    def fall_off_lader
        "Call me agent! No way!"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_lader
            actor.light_on_fire
            actor.light_on_fire
            actor.light_on_fire
            actor.light_on_fire
            actor.act
            actor.act
            actor.act
            actor.act
        end
    end
end

# actor = Actor.new("Brad Pitt")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
    let(:actor) { double("Angelina Jolie", ready?: true, act: "Any other string", fall_off_lader: "Hello World", light_on_fire: true) }
    subject { described_class.new(actor) }

    describe "#start_shooting method" do
       it 'should do 3 things' do
           expect(actor).to receive(:ready?)
           expect(actor).to receive(:act)
           expect(actor).to receive(:fall_off_lader)
           expect(actor).to receive(:light_on_fire)

           subject.start_shooting
       end
    end

    describe "how many times a method is executed" do
        it 'counts how many times is called from this  (4 times)' do
            expect(actor).to receive(:light_on_fire).once
            expect(actor).to receive(:light_on_fire).exactly(1).times
            expect(actor).to receive(:light_on_fire).at_most(1).times
            expect(actor).to receive(:light_on_fire).at_most(1).times
            subject.start_shooting
        end

        it 'counts how many times is called a method (5 times)' do
            expect(actor).to receive(:act).twice
            expect(actor).to receive(:act).at_least(3)
            subject.start_shooting
        end
    end
end
