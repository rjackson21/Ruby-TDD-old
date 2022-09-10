require 'rspec'
require_relative 'dog'

describe Dog do
    describe '#bark' do
        it 'returns the "Woof!"' do
            expect(subject.bark).to eql('Woof!')
        end
    end

    describe '#hungry?' do
        it 'returns true if hunger_level is more than 5' do
            hungry_dog = Dog.new(hunger_level: 7)
            expect(hungry_dog.hungry).to eql(true)
        end
    end
end
