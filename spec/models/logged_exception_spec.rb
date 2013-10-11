require 'spec_helper'

describe LoggedException do
  describe "#exception_details" do
    let(:event) { create(:event) }
    let(:exception_details) { LoggedException.exception_details(event.event_id) }

    before :each do
      @exception1 = create(:logged_exception, event_id: event.event_id)
      @exception2 = create(:logged_exception, event_id: event.event_id)
    end

    it "returns all trace lines for a given event" do
      expect(exception_details).to include(@exception1,
                                           @exception2)
    end
  end
end
