require 'telegram/bot'
require_relative './dog.rb'
require_relative './cat.rb'
require_relative './greetings.rb'

class Bot
  attr_reader :dog, :cat, :photo
  def initialize
    token = '1392241254:AAGQoWtD2GRs8TCG71nroHSDSAPtOOk58CQ'
    @dog = Dog.new
    @cat = Cat.new
    @greeting = Welcome.new
    image_path = '../images/*'
    images = Dir[image_path]
    @photo = images

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        dog_text = @dog.dog_curiosities.sample
        cat_text = @cat.cat_curiosities.sample
        if message.text == '/start'
          bot.api.send_message(chat_id: message.chat.id, text: @greeting.welcome)
        elsif message.text == '/dog'
          bot.api.send_message(chat_id: message.chat.id, text: dog_text)
        elsif message.text == '/cat'
          bot.api.send_message(chat_id: message.chat.id, text: cat_text)
        elsif message.text == '/end'
          bot.api.send_message(chat_id: message.chat.id, text: @greeting.bye.sample)
        elsif message.text == '/photo'
          bot.api.send_photo(chat_id: message.chat.id, photo: Faraday::UploadIO.new(photo.sample, 'image/jpeg'))
        else
          bot.api.send_message(chat_id: message.chat.id, text: @greeting.wrong_command)
        end
      end
    end
  end
end

Bot.new
