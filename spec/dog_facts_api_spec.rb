require_relative '../lib/dog_facts_api'

describe DogFactsApi do
  context 'when the API returns a successful response' do
    before do
      fake_body = '{"data":[{"attributes":{"body":"Dogs can smell fear."}}]}'
      fake_response = instance_double(Net::HTTPResponse, body: fake_body)
      allow(Net::HTTP).to receive(:get_response).and_return(fake_response)
    end

    it 'returns a fact string from the API' do
      expect(DogFactsApi.new.fact).to eq('Dogs can smell fear.')
    end

    it 'returns a String' do
      expect(DogFactsApi.new.fact).to be_a(String)
    end
  end

  context 'when the API raises an error' do
    before do
      allow(Net::HTTP).to receive(:get_response).and_raise(SocketError)
    end

    it 'returns a fallback fact that is a String' do
      expect(DogFactsApi.new.fact).to be_a(String)
    end

    it 'returns a fact from the Dog hardcoded list' do
      fallback_dog = Dog.new
      fact = DogFactsApi.new.fact
      expect(fallback_dog.dog_curiosities).to include(fact)
    end
  end
end
