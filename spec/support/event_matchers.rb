RSpec::Matchers.define :contain_log_level do |level|
  match do |events|
    events.inject(false) { |val, event| val || event[:level_string] == level }
  end
end
