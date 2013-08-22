FactoryGirl.define do
  factory :event do
    sequence(:event_id) { |n| n }
    sequence(:log_date) { |n| Time.now + n.seconds }
    sequence(:formatted_message) { |n| "This is log message #{n}." }
    level_string "INFO"
  end
end
