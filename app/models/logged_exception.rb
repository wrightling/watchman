class LoggedException < Sequel::Model(:logging_event_exception)
  many_to_one :event, key: :event_id

  def self.exception_details(event_id)
    LoggedException.where(event_id: event_id).all
  end
end
