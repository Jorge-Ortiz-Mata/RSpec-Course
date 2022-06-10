class Car
end

RSpec.describe Car do
    it 'should start empty' do
        puts subject
        puts subject.class
    end
end

=begin

    The subject is included in order to create an object of specific classes
    For example: 
        
        subject is equal to "Hash.new()"

    We can create an object using let, but you don't need to do it
    because in some cases, you can repeat this code.

    These are the results what you get once you run the code:

        puts subject => {}
        puts subject.class => Hash
    
    Whether you want to use a class, you should define it. For testing
    purposes, you can use Hash, Array and String.

=end