module AsyncNotifications
  class Channel

    attr_reader :events

    def initialize(name, &block)
      @name       = name
      @events     = []
      instance_eval(&block)
    end


    def target(target)
      @target = target
    end


    def name
      if @target.is_a?(Proc)
        "/#{@name}/#{@target.call(self)}"
      else
        @target
      end
    end


    def event(name, options = {})
      new_event = Event.new(name, options)
      @events.push(new_event)
    end

  end
end
