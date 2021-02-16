require "slack-notify"
require 'clockwork'
require 'dotenv/load'
require 'active_support/time'

# sample = SlackNotify::Client.new(webhook_url: ENV["SLACK_WEBHOCK_URL"])
# sample.test
# sample.notify("Hello There!")
# sample.notify("Another message", "#exam")

module Clockwork
  handler do |job|
    job.call
  end
  every(
    3.minutes,
    lambda do
      sample = SlackNotify::Client.new(webhook_url: ENV["SLACK_WEBHOCK_URL"])
      sample.test
    end
  )
end

# module Clockwork
#   handler do |job|
#     puts "Running #{job}"
#   end
#   every(10.seconds, 'frequent.job')
#   every(3.minutes, 'less.frequent.job')
#   every(1.hour, 'hourly.job')
#   every(1.day, 'midnight.job', :at => '00:00')
# end