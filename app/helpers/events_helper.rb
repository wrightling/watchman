module EventsHelper
  def default_num_events
    Watchman.config.default_num_events
  end
end
