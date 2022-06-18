RSpec.describe 'Doubles taks' do

    context 'Database Connection' do
        it 'is connected successfully' do
            db = double("PostgreSQL", connect: true, disconnect: "Goodbye")

            expect(db.connect).to be true
        end

        it 'is disconnected successfully' do
            db = double("PostgreSQL", connect: true, disconnect: "Goodbye")

            expect(db.disconnect).to eq("Goodbye")
        end
    end

    context 'Fyle System' do
        it 'validates Romeo and Juliet' do
            fs = double("Fyle System")

            allow(fs).to receive(:read).and_return("Romeo and Juliet")
            expect(fs.read).to eql("Romeo and Juliet")
        end

        it 'validates the false value' do
            fs = double("Fyle System")

            allow(fs).to receive(:write).and_return(false)
            expect(fs.write).to be false
        end

        it 'validates both methods in one test' do
            fs = double("Fyle System")

            allow(fs).to receive_messages(read: "Romeo and Juliet", write: false)

            expect(fs.read).to eql("Romeo and Juliet")
            expect(fs.write).to be_falsy
        end
    end

end


=begin

    1. Create a double with the name "Database Connection". 
        The double should have a method called connect that returns the value true.
        The double also have a method called disconnect that returns the value "Goodbye".
        The double's methods should be assigned in the initial invocation of the double method.
        Write two expectations, one for connect and one for disconnect, that confirms the return value of each.
        Assign the double to the variable db.
    
    2. Create a double with the name "File System". Assign the double to the variable fs.
        Using the allow method, give the double a read method that returns the value "Romeo and Juliet".
        Using the allow method, give the double a write method that returns the value false.

=end