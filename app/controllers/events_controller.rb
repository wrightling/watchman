class EventsController < ApplicationController
  def index
    @events = Event.top(10)
  end
end
