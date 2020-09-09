require 'telegram/bot'

describe Telegram::Bot do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end
end

describe Telegram::Bot::Client do
  it 'has a client' do
    expect(Telegram::Bot::Client).not_to be nil
  end
end
