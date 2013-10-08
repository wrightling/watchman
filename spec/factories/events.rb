FactoryGirl.define do
  factory :event do
    sequence(:event_id) { |n| n*1000 }
    sequence(:log_date) { |n| Time.now + n.seconds }
    sequence(:formatted_message) { |n| "This is log message #{n}." }
    level_string "INFO"
    sequence(:thread_name) { |n| "Thread-#{n}" }
    sequence(:logger_name) { |n| "Logger name #{n}" }
    sequence(:caller_filename) { |n| "Caller #{n}" }
    sequence(:caller_method) { |n| "Caller Method #{n}" }
    sequence(:caller_line) { |n| n*100 }
    sequence(:caller_class) { |n| "Caller Class #{n}" }
  end
end
