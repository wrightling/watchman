class LoggedException < Sequel::Model(:logging_event_exception)
  many_to_one :event, key: :event_id
end
