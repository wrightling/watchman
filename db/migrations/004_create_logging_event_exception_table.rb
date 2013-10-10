Sequel.migration do
  up do
    create_table(:logging_event_exception) do
      Integer :event_id
      Integer :i
      String :trace_line
    end
  end

  down do
    drop_table(:logging_event_exception)
  end
end
