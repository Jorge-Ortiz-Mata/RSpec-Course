class Car
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

RSpec.describe Car do
    subject { described_class.new('Boris') }
    let(:louis) { described_class.new('Louis') }

    it 'represents a greate person' do
        expect(subject.name).to eq('Boris')
        expect(louis.name).to eq('Louis')
    end
end

=begin

    There will be cases where we need to change the class' name, but it can take
    a lot of effort in order to do that, beacuse, the name's class could be
    called later on in the programming code.

    We use "described_class" as a way to reference the class.
    If we want to change the name's class, we only have to do it 
    at the beginnig of the SPEC, declaring our variables.

=end

