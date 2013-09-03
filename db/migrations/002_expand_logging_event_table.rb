Sequel.migration do
  up do
    add_column :logging_event, :thread_name, String
    from(:logging_event).update(thread_name: 'Timer-1')

    add_column :logging_event, :logger_name, String
    from(:logging_event).update(logger_name: 'com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable')

    add_column :logging_event, :caller_filename, String
    from(:logging_event).update(caller_filename: 'CacheEngineSchedulable.java')

    add_column :logging_event, :caller_method, String
    from(:logging_event).update(caller_filename: 'perform')

    add_column :logging_event, :caller_line, String
    from(:logging_event).update(caller_line: '41')
  end

  down do
    drop_column :logging_event, :thread_name
    drop_column :logging_event, :logger_name
    drop_column :logging_event, :caller_filename
    drop_column :logging_event, :caller_method
    drop_column :logging_event, :caller_line
  end
end
