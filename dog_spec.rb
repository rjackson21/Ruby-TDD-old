require 'rspec'
require_relative 'dog'


describe Dog do 
 

    describe '#bark' do
        it 'it returns the string "Woof!"' do
            expect(subject.bark).to eql('Woof!')
        end
    end

    describe '#feed' do
        it 'is no longer hungry' do
            dog = Dog.new(hunger_level: 7)
            dog.feed
            expect(dog.hungry).to eql(false)
        end
    end

    describe '#hungry' do
        context 'if hunger_level is more than 5' do
            it 'returns true' do
                dog = Dog.new(hunger_level: 7)
                expect(dog.hungry).to eql(true)
            end
        end

        context 'if hunger_level is 5 or less' do
            it 'returns false' do
                dog = Dog.new(hunger_level: 5)
                expect(dog.hungry).to eql(false)
            end
        end
    end
end

