class Event < Sequel::Model(:logging_event)
  no_primary_key

  def self.top(num_events, after_id=0, log_level='info')
    Event.order_by(:event_id)
      .select(:event_id, :log_date, :formatted_message, :level_string,
              :thread_name, :logger_name, :caller_filename, :caller_method,
              :caller_line)
      .where('event_id > ?', after_id)
      .where(level_string: levels(log_level))
      .last(num_events)
  end

  private

  def self.levels(log_level)
    case log_level
    when "info"
      ['INFO', 'WARN', 'ERROR']
    when "warn"
      ['WARN', 'ERROR']
    when "error"
      'ERROR'
    end
  end
end
