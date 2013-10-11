FactoryGirl.define do
  factory :logged_exception do
    sequence(:event_id)   { create(:event).event_id }
    sequence(:i)          { |n| n }
    sequence(:trace_line) { |n| "trace line #{n}" }
  end
end
