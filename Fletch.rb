require 'discordrb'

TOKEN = 'NTA5NDIwNDkzODU4OTMwNjk4.DsSYZg.62cG4BGs0JXUZe45xRbw-z1ywNQ'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'mafia#'

bot.message(in: 507253430524313602, from: 163341980846260225) do |event|
    bot.send_message(507253430524313602, "#{event.message.content}")
    bot.send_message(509422550279782402, "#{event.message.content}")
    event.message.delete
end

bot.run
