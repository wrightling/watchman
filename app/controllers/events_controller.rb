class EventsController < ApplicationController
  def index
    @events = Event.top(10, params[:after].to_i)
  end
end
