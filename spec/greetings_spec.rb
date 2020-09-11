require_relative '../lib/greetings.rb'

describe Welcome do
  let(:greeting) { Welcome.new }
  let(:wrong_string) { 'jhnkn' }
  let(:wrong_array) { %w[asdds afssaf] }

  context '#initialize' do
    it 'test that the input attribute on initialization is a String' do
      expect(greeting.welcome.class).to eql(String)
    end
    it 'test that the string on initialization is not a different string' do
      expect(greeting.welcome).not_to be == wrong_string
    end
    it 'test that the input attribute on initialization is an array' do
      expect(greeting.bye.class).to eql(Array)
    end
    it 'test that the array on initialization is not a different array' do
      expect(greeting.bye).not_to be == wrong_string
    end
    it 'test the use of the built-in method sample' do
      expect(greeting.bye.sample.class).to eql(String)
    end
  end
end
