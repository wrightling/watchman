insert into logging_event
      select 1, '2013-05-03 07:26:53', "Message 1", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "41"
union select 2, '2013-05-03 07:27:44', "Message 2", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "35"
go

insert into logging_event
      select 3, '2013-05-04 07:27:44', "Message 3", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "22"
union select 4, '2013-05-05 07:27:44', "Message 4", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "44"
go

insert into logging_event
      select 5, '2013-05-06 07:27:44', "Message 5", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "49"
union select 6, '2013-05-07 07:27:44', "Message 6", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "1024"
go

insert into logging_event
      select 7, '2013-05-08 07:27:44', "Message 7", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "400"
union select 8, '2013-05-09 07:27:44', "Message 8", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999"
go

delete from logging_event
go