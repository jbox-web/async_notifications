require 'async_notifications/channel'
require 'async_notifications/event'

module AsyncNotifications
  class << self

    @@channels = []

    def register_channel(id, &block)
      @@channels << AsyncNotifications::Channel.new(id, &block)
    end


    def channels
      @@channels
    end

  end
end
