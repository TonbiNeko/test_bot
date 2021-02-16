require "slack-notify"
require 'clockwork'
require 'dotenv/load'
# 下記のgemをrequireすると、minutesなどの時間を指し示すメソッドを使えるようになるので、記述しておくことを推奨します。
require 'active_support/time'

#client = SlackNotify::Client.new(webhook_url: "slack webhook url")
sample = SlackNotify::Client.new(webhook_url: ENV["SLACK_WEBHOCK_URL"])
sample.test
sample.notify("Hello There!")
sample.notify("Another message", "#exam")

module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
end