require 'telegram/bot'
require_relative './dog.rb'



class Bot
attr_accessor :dog
  def initialize
    token = '1392241254:AAGQoWtD2GRs8TCG71nroHSDSAPtOOk58CQ'
    @dog = Dog.new
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        dog_text = @dog.dog_curiosities.sample
        bot.api.send_message(chat_id: message.chat.id, text: dog_text)
      end
    end
  end
end

Bot.new
