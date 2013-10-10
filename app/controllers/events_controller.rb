class EventsController < ApplicationController
  def index
    @events = Event.top(num_events, params[:after].to_i, log_level)
  end

  def show
    event = Event.find(event_id: params[:event_id])
    respond_to do |format|
      format.json { render json: EventDetails.new(event).to_json }
    end
  end
end
