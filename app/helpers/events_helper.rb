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

  def escape_dot(event_id)
    event_id.to_s.gsub /\./, '\\\\.'
  end
end
