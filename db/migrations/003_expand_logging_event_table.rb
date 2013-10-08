Sequel.migration do
  up do
    add_column :logging_event, :caller_class, String
    from(:logging_event).update(caller_class: 'com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable')
  end

  down do
    drop_column :logging_event, :caller_class
  end
end
