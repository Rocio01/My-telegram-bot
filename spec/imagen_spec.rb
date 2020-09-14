require_relative '../lib/imagen.rb'

describe Photo do
  let(:photo) { Photo.new }
  context '#initialize' do
    it 'test that the input attribute on initialization is an array' do
      expect(photo.imagen.class).to eql(Array)
    end
    it 'test the use of the built-in method sample' do
      expect(photo.imagen.sample.class).to eql(String)
    end
  end
end
