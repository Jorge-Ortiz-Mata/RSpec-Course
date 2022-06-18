class Car
    def initialize(model, make)
        @model = model
        @make =model
    end
end

class Garage
    attr_reader :storage

    def initialize
        @storage = []
    end

    def add_to_collection(model, make)
        @storage << Car.new(model, make)
    end
end

RSpec.describe Garage do
    let(:car) { instance_double(Car) }

    it 'adds a car to its storage' do
        allow(Car).to receive(:new).and_return(car)
        subject.add_to_collection('XTR20', 'Honda')
        expect(Car).to have_received(:new).with("XTR20", "Honda")
        expect(subject.storage.length).to eq(1)
        expect(subject.storage.first).to eq(car)
    end
end
