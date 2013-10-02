class WatchController < ApplicationController
  def index
    @events = Event.top(num_events)
  end
end
