require 'telegram/bot'

describe Telegram::Bot do
  it 'has a version number' do
    expect(described_class::VERSION.nil?).to eql(false)
  end
end

describe Telegram::Bot::Client do
  it 'exists as a class' do
    expect(Telegram::Bot::Client).to be_a(Class)
  end
end
