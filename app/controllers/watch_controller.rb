class WatchController < ApplicationController
  def index
    @events = Event.top(Watchman.config.default_num_events)
  end
end
