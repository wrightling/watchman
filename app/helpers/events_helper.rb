module EventsHelper
  def default_num_events
    Watchman.config.default_num_events
  end

  def to_time(time)
    Time.new(time) unless time.class == Time
  end
end
