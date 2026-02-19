require 'dotenv/load'
require 'telegram/bot'
require_relative './dog.rb'
require_relative './cat.rb'
require_relative './greetings.rb'
require_relative './imagen.rb'
require_relative './dog_facts_api.rb'
require_relative './cat_facts_api.rb'
require_relative './dog_photo_api.rb'
require_relative './cat_photo_api.rb'

class Bot
  attr_reader :dog, :cat, :photo, :token

  def initialize
    @token = ENV['TELEGRAM_TOKEN']
    @dog = Dog.new
    @cat = Cat.new
    @greeting = Welcome.new
    @photo = Photo.new
  end

  def copito_bot
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        handle_message(bot, message)
      end
    end
  end

  private

  def handle_message(bot, message)
    return unless message.respond_to?(:text) && message.respond_to?(:chat)

    case message.text
    when '/start' then bot.api.send_message(chat_id: message.chat.id, text: @greeting.welcome)
    when '/dog' then bot.api.send_message(chat_id: message.chat.id, text: @dog.dog_curiosities.sample)
    when '/cat' then bot.api.send_message(chat_id: message.chat.id, text: @cat.cat_curiosities.sample)
    when '/dog_fact' then bot.api.send_message(chat_id: message.chat.id, text: DogFactsApi.new.fact)
    when '/cat_fact' then bot.api.send_message(chat_id: message.chat.id, text: CatFactsApi.new.fact)
    when '/dog_photo' then send_dog_photo(bot, message)
    when '/cat_photo' then send_cat_photo(bot, message)
    when '/end' then bot.api.send_message(chat_id: message.chat.id, text: @greeting.bye.sample)
    when '/photo' then send_local_photo(bot, message)
    else bot.api.send_message(chat_id: message.chat.id, text: @greeting.wrong_command)
    end
  end

  def send_local_photo(bot, message)
    bot.api.send_photo(chat_id: message.chat.id,
                       photo: Faraday::UploadIO.new(@photo.imagen.sample, 'image/jpeg'))
  end

  def send_dog_photo(bot, message)
    url = DogPhotoApi.new.url
    if url
      bot.api.send_photo(chat_id: message.chat.id, photo: url)
    else
      bot.api.send_message(chat_id: message.chat.id, text: 'Could not fetch a dog photo right now.')
    end
  end

  def send_cat_photo(bot, message)
    url = CatPhotoApi.new.url
    if url
      bot.api.send_photo(chat_id: message.chat.id, photo: url)
    else
      bot.api.send_message(chat_id: message.chat.id, text: 'Could not fetch a cat photo right now.')
    end
  end
end
