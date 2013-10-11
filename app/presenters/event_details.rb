class EventDetails
  def initialize(event)
    @event = event
  end

  def to_json
    event.as_json.merge(has_exception).to_json
  end

  private

  attr_reader :event

  def has_exception
    { "has_exception" => "#{event.logged_exceptions.count > 0}" }
  end
end
