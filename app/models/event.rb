class Event < Sequel::Model(:logging_event)
  no_primary_key

  def self.top(num_events, after_id=0)
    Event.order_by(:event_id)
      .select(:event_id, :log_date, :formatted_message, :level_string)
      .where('event_id > ?', after_id)
      .last(num_events)
  end
end
