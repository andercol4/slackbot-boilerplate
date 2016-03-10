require 'slack-ruby-client'
require 'dotenv'
require 'pry'
Dotenv.load

Slack.configure do |config|
  config.token = ENV['TOKEN']
end

client = Slack::Web::Client.new
binding.pry
client.chat_postMessage(channel: '#general', text: 'New kids can\'t keep up', as_user: true)
