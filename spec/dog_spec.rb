require_relative '../lib/dog'

describe Dog do
    let (:dog) {Dog.new}
    context '#initialize' do
        it 'creates new dog_curiosities instance' do
            expect(dog.dog_curiosities.class).to eql(Array)
        end
    end
end