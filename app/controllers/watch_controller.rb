class WatchController < ApplicationController
  def index
    @events = Event.top(num_events, 0, log_level)
  end
end
