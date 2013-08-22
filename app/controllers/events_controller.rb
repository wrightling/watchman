class EventsController < ApplicationController
  def index
    @events = Event.top(Watchman.config.default_num_events, params[:after].to_i)
  end
end
