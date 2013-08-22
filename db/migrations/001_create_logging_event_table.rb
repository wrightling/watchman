Sequel.migration do
  up do
    create_table(:logging_event) do
      primary_key :event_id
      DateTime    :log_date
      String      :formatted_message
      String      :level_string
    end
  end

  down do
    drop_table(:logging_events)
  end
end
