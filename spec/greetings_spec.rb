require_relative '../lib/greetings.rb'

describe Welcome do
  let(:greeting) { Welcome.new }
  context '#initialize' do
    it 'test that the input attribute on initialization is a String' do
      expect(greeting.welcome.class).to eql(String)
    end
    it 'test that the input attribute on initialization is an array' do
      expect(greeting.bye.class).to eql(Array)
    end
    it 'test the use of the built-in method sample' do
      expect(greeting.bye.sample.class).to eql(String)
    end
  end
end
