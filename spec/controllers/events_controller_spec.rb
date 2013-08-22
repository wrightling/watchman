require 'spec_helper'

describe EventsController do
  describe "ajax request to update events" do
    render_views

    before :each do
      @event = create(:event)
      @new_event = create(:event)
      xhr :get, :index, after: @event.event_id
    end

    it "has a 200 status" do
      expect(response.response_code).to eql 200
    end

    it "returns expected javascript" do
      expect(response.body).to include("prepend",
                                       @new_event.formatted_message,
                                       "EventPoller.poll()")
    end
  end
end
