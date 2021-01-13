require 'telegram/bot'

describe Telegram::Bot do
  it 'has a version number' do
    expect(described_class::VERSION.nil?).to eql(false)
  end
end

describe Telegram::Bot::Client do
  it 'has a client' do
    expect(Telegram::Bot::Client.nil?).to eql(false)
  end
end
