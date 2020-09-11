require_relative '../lib/cat.rb'
require_relative '../lib/dog.rb'

describe Cat do
  let(:cat) { Cat.new }
  let(:wrong_array) { %w[dog puppies] }

  context '#initialize' do
    it 'test that the input attribute on initialization is an array' do
      expect(cat.cat_curiosities.class).to eql(Array)
    end
    it 'test the use of the built-in method sample' do
      expect(cat.cat_curiosities.sample.class).to eql(String)
    end
    it 'test that the array on initialization is not a different array' do
      expect(cat.cat_curiosities).not_to be == wrong_array
    end
  end
end

describe Dog do
  let(:dog) { Dog.new }
  let(:wrong_array) { %w[cat kittens] }
  context '#initialize' do
    it 'test that the input attribute on initialization is an array' do
      expect(dog.dog_curiosities.class).to eql(Array)
    end
    it 'test the use of the built-in method sample' do
      expect(dog.dog_curiosities.sample.class).to eql(String)
    end
    it 'test that the array on initialization is not a different array' do
      expect(dog.dog_curiosities).not_to be == wrong_array
    end
  end
end
