require 'discordrb'

TOKEN = 'NTA5NDIxMjI4ODUxODU1NDQz.DsSYqw.9Tq5mL5yaZVU-gMWwKeJHvxx5Ls'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'mafia#'

bot.message(in: 507253430524313602, from: 501097231571615756) do |event|
    bot.send_message(507253430524313602, "#{event.message.content}")
    bot.send_message(509422550279782402, "#{event.message.content}")
    event.message.delete
end

bot.message(in: 509422550279782402, from: 501097231571615756) do |event|
    bot.send_message(509422550279782402, "#{event.message.content}")
    bot.send_message(507253430524313602, "#{event.message.content}")
    event.message.delete
end

bot.run
