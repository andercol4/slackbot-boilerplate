require 'slack-ruby-client'
require 'dotenv'
require 'pry'
Dotenv.load

Slack.configure do |config|
  config.token = ENV['TOKEN']
end

client = Slack::RealTime::Client.new
client.on :message do |data|
  puts data
  case data.text
  when 'bot hi'
    client.message channel: data.channel, text: "Hi <@#{data.user}>!"
  end
end
client.start!
