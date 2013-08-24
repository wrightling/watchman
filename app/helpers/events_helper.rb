module EventsHelper
  def default_num_events
    Watchman.config.default_num_events
  end

  def to_time(time)
    if time.class == Time
      time
    else
      Time.new(time)
    end
  end
end
