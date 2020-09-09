require_relative '../lib/greetings.rb'

describe Welcome do
  let(:greeting) { Welcome.new }
  context '#initialize' do
    it 'creates a new Welcome instance welcome' do
      expect(greeting.welcome.class).to eql(String)
    end
    it 'creates a new Welcome instance bye' do
      expect(greeting.bye.class).to eql(Array)
    end
  end
end
