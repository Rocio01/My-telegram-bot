require_relative '../lib/bot.rb'
require 'colorize'

def print_menu
  puts ' '
  puts 'Welcome please open your telegram account and search for copito1_bot'.cyan
  sleep(0.5)
  puts ' ....'.cyan
  puts ' ........ '.cyan
  sleep(0.5)
  puts ' '
  puts ' When you are ready to finish just press ctrl + c'.green
end
print_menu
Bot.new.copito_bot
