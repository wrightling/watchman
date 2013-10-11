require 'spec_helper'

describe LoggedExceptionsController do
  describe "xhr get #show" do
    render_views

    before :each do
      @exception = create(:logged_exception)
      xhr :get, :show, event_id: @exception.event.event_id
    end

    it "has a 200 status" do
      expect(response.status).to eql 200
    end

    it "returns expected javascript" do
      expect(response.body).to include(@exception.trace_line)
    end
  end
end
