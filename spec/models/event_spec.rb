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

    context "with a log level set" do
      before :each do
        2.times { create(:event, level_string: "ERROR") }
        2.times { create(:event, level_string: "WARN") }
      end

      let(:num_events) { 6 }
      let(:events) { Event.top(num_events, 0, log_level) }

      context "with a log level set to :warn" do
        let(:log_level) { "warn" }

        it "shows only warnings and errors" do
          expect(events).not_to contain_log_level('INFO')

          expect(events).to contain_log_level('WARN')
          expect(events).to contain_log_level('ERROR')
        end
      end

      context "with a log level set to :error" do
        let(:log_level) { "error" }

        it "shows only errors" do
          expect(events).not_to contain_log_level('INFO')
          expect(events).not_to contain_log_level('WARN')

          expect(events).to contain_log_level('ERROR')
        end
      end
    end
  end
end
