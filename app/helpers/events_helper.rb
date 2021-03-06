module EventsHelper
  def num_events
    @_controller.num_events
  end

  def log_level
    @_controller.log_level
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
