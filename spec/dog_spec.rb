require_relative '../lib/dog'

describe Dog do
  let(:dog) { Dog.new }
  context '#initialize' do
    it 'creates a new dat instance dog_curiosities' do
      expect(dog.dog_curiosities.class).to eql(Array)
    end
  end
end
