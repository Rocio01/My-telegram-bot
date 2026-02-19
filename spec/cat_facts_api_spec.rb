require_relative '../lib/cat_facts_api'

describe CatFactsApi do
  context 'when the API returns a successful response' do
    before do
      fake_body = '{"fact":"Cats sleep 16 hours a day.","length":25}'
      fake_response = instance_double(Net::HTTPResponse, body: fake_body)
      allow(Net::HTTP).to receive(:get_response).and_return(fake_response)
    end

    it 'returns a fact string from the API' do
      expect(CatFactsApi.new.fact).to eq('Cats sleep 16 hours a day.')
    end

    it 'returns a String' do
      expect(CatFactsApi.new.fact).to be_a(String)
    end
  end

  context 'when the API raises an error' do
    before do
      allow(Net::HTTP).to receive(:get_response).and_raise(Net::OpenTimeout)
    end

    it 'returns a fallback fact that is a String' do
      expect(CatFactsApi.new.fact).to be_a(String)
    end

    it 'returns a fact from the Cat hardcoded list' do
      fallback_cat = Cat.new
      fact = CatFactsApi.new.fact
      expect(fallback_cat.cat_curiosities).to include(fact)
    end
  end
end
