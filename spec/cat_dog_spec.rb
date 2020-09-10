require_relative '../lib/cat.rb'
require_relative '../lib/dog.rb'

describe Cat do
  let(:cat) { Cat.new }
  context '#initialize' do
    it 'test that the input attribute on initialization is an array' do
      expect(cat.cat_curiosities.class).to eql(Array)
    end
    it 'test the use of the built-in method sample' do
      expect(cat.cat_curiosities.sample.class).to eql(String)
    end
  end
end

describe Dog do
  let(:dog) { Dog.new }
  context '#initialize' do
    it 'test that the input attribute on initialization is an array' do
      expect(dog.dog_curiosities.class).to eql(Array)
    end
    it 'test the use of the built-in method sample' do
      expect(dog.dog_curiosities.sample.class).to eql(String)
    end
  end
end
