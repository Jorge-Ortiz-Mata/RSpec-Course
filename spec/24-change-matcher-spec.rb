def change_country_name
    "USA"
end
RSpec.describe 'Change matcher' do

    context 'These examples' do
        subject{ [1, 2, 3] }
        
        it 'checks that a method changes object state' do
            expect { subject.push(4) }.to change { subject.length }.by(1)
        end
        
        it 'accepts negative arguments' do
            expect { subject.pop }.to change { subject.length }.by(-1)
            expect { subject.pop }.to change(subject, :length).by(-1)
        end
    end

    context 'Validate changes of...' do
        let(:user) { {name: "Jorge"} }

        it 'checks the change of the user value' do
            expect { user[:name] = "Ana" }.to change { user[:name] }.from("Jorge").to("Ana")
        end
        
        it 'checks the result of num' do
            num = 10
            expect { num =  2 }.to change { num }.from(10).to(2)
        end

        it 'checks the result of country' do
            country = "Mexico"
            expect { country = "MXN" }.to change { country }.from("Mexico").to("MXN")
        end
    end
end

=begin

    The change method is implemented in order to verify a change between variables
    or objects. In this case, we are testing that the subject value has an expected value
    once we do something with that object.

    Example: 
        * expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
        * expect { subject.push(4) }.to change { subject.length }.by(1)
    
    We excpected to have the subject length value to 4 once we push a value inside of
    this array.

=end
