require_relative '../lib/dog_photo_api'

describe DogPhotoApi do
  context 'when the API returns a successful response' do
    before do
      fake_body = '[{"url":"https://cdn2.thedogapi.com/images/abc.jpg"}]'
      fake_response = instance_double(Net::HTTPResponse, body: fake_body)
      fake_http = instance_double(Net::HTTP)
      allow(Net::HTTP).to receive(:start).and_yield(fake_http)
      allow(fake_http).to receive(:request).and_return(fake_response)
    end

    it 'returns a URL string' do
      expect(DogPhotoApi.new.url).to eq('https://cdn2.thedogapi.com/images/abc.jpg')
    end

    it 'returns a String' do
      expect(DogPhotoApi.new.url).to be_a(String)
    end
  end

  context 'when the API raises a network error' do
    before do
      allow(Net::HTTP).to receive(:start).and_raise(SocketError)
    end

    it 'returns nil as fallback' do
      expect(DogPhotoApi.new.url).to be_nil
    end
  end
end
