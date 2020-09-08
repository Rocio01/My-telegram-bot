require 'telegram/bot'

class Bot
  def initialize
    token = '1392241254:AAGQoWtD2GRs8TCG71nroHSDSAPtOOk58CQ'

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        text = [" Stray dogs in Russia have learned how to ride the complex
                subway system, and get off at specific stops in search of food.",
                "Spiked collars were originally fashioned in ancient Greece to
                 protect dogs throats from wolf attacks.",
                'Your Dog’s Sense of Smell is 1,000 to 10 Million Times Better Than Yours',
                'Dogs Can Hear 4 Times as Far as Humans',
                'Your Dog Can Smell Your Feelings',
                'Dogs Only Have Sweat Glands in Their Paw',
                'The African Hunting dog is the most successful hunter in the world',
                'On average around 30% of Dalmatians are deaf in one ear and 5% are deaf in both. ',
                "The Beatles song 'A Day in the Life' has a frequency only dogs can hear.",
                'Dogs noses are wet to help absorb scent chemicals'].sample
        bot.api.send_message(chat_id: message.chat.id, text: text)
      end
    end
  end
end

Bot.new
