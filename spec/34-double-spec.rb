RSpec.describe 'Double method' do 

    it 'only allows defined methods' do
        stuntman = double("Mr. Danger", fall_off_lader: 'Ouch', light_on_fire: true)

        expect(stuntman.fall_off_lader).to eq("Ouch")
        expect(stuntman.light_on_fire).to be true
    end

    it 'alternative sintax' do
        stuntman = double("Mr. Danger")

        allow(stuntman).to receive(:fall_off_lader).and_return("Ouch")
        expect(stuntman.fall_off_lader).to eq("Ouch")
    end

    it 'another alternative sintax' do
        stuntman = double("Mr. Danger")

        allow(stuntman).to receive_messages(fall_off_lader: 'Ouch', light_on_fire: true)
        
        expect(stuntman.fall_off_lader).to eql("Ouch")
        expect(stuntman.light_on_fire).to eq(true)
    end
end