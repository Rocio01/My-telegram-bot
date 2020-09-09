require_relative '../lib/cat.rb'
require_relative '../lib/dog.rb'

describe Cat do
  let(:cat) { Cat.new }
  context '#initialize' do
    it 'creates a new Cat instance cat_curiosities' do
      expect(cat.cat_curiosities.class).to eql(Array)
    end
  end
end

describe Dog do
  let(:dog) { Dog.new }
  context '#initialize' do
    it 'creates a new dat instance dog_curiosities' do
      expect(dog.dog_curiosities.class).to eql(Array)
    end
  end
end
