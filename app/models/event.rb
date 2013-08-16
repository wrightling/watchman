class Event < Sequel::Model(:logging_event)
  no_primary_key

  def self.top(num_events)
    Event.order_by(:event_id)
      .select(:event_id, :log_date, :formatted_message, :level_string)
      .last(num_events)
  end
end
