class EventsController < ApplicationController
  def index
    @events = Event.top(num_events, params[:after].to_i, log_level)
  end

  def show
    respond_to do |format|
      format.json { render json: Event.find(event_id: params[:event_id]) }
    end
  end
end
