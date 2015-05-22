module AsyncNotifications
  class Event

    attr_reader :name
    attr_reader :options


    def initialize(name, opts = {})
      @name = name
      @options = opts
    end

  end
end
