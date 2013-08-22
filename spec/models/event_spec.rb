require 'spec_helper'

describe Event do
  before :each do
    5.times { create(:event) }
  end

  describe "#top" do
    shared_examples_for Event do
      it "returns the most recent events" do
        events.first.should eql Event.all.last
      end

      it "returns no more than the number of events requested" do
        events.count.should eql num_events
      end
    end

    context "without specifying after_id" do
      let(:num_events) { 2 }
      let(:events) { Event.top(num_events) }

      it_behaves_like Event
    end

    context "with a specified after_id" do
      let(:num_events) { 2 }
      let(:after_id) { Event.all[num_events-1].event_id }
      let(:events) { Event.top(num_events, after_id) }

      it_behaves_like Event

      it "returns only events created after after_id" do
        events.each do |event|
          event.event_id.should be > after_id
        end
      end
    end
  end
end
