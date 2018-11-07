require 'discordrb'

TOKEN = 'NTA5NDIwOTYzOTYwNTg2MjQy.DsSWmg.vl48gNfhsem6igO6fF53hEjOZRA'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'mafia#'

bot.message(in: 509422550279782402, from: 170927707549466625) do |event|
    bot.send_message(509422550279782402, "#{event.message.content}")
    bot.send_message(507253430524313602, "#{event.message.content}")
    event.message.delete
end

bot.run
