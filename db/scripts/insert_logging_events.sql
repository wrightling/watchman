insert into logging_event
      select 1, '2013-05-03 07:26:53', "Message 1", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "41", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 2, '2013-05-03 07:27:44', "Message 2", "ERROR", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "35", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
go

insert into logging_event
      select 3, '2013-05-04 07:27:44', "Message 3", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "22", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 4, '2013-05-05 07:27:44', "Message 4", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "44", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
go

insert into logging_event
      select 5, '2013-05-06 07:27:44', "Message 5", "ERROR", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "49", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 6, '2013-05-07 07:27:44', "Message 6", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "1024", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
go

insert into logging_event
      select 7, '2013-05-08 07:27:44', "Message 7 - Twas Brillig and the slithy toves did gyre and gimble in the wabe.  All mimsy were the borogroves, and the mome wraths outgbrabe.  Beware the Jabberwock my son, the jaws the bite, the claws that catch.", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "400", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 8, '2013-05-09 07:27:44', "Message 8", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
go

insert into logging_event
      select 9, '2013-05-10 07:27:44', "Message 9 - Twas Brillig and the slithy toves did gyre and gimble in the wabe.  All mimsy were the borogroves, and the mome wraths outgbrabe.  Beware the Jabberwock my son, the jaws the bite, the claws that catch.", "INFO", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "400", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 10, '2013-05-11 07:27:44', "Message 10", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 11, '2013-05-12 07:27:44', "Message 11", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 12, '2013-05-13 07:27:44', "Message 12", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 13, '2013-05-14 07:27:44', "Message 13", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 14, '2013-05-15 07:27:44', "Message 14", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
union select 15, '2013-05-16 07:27:44', "Message 15", "WARN", "Timer-1", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable", "CacheEngineSchedulable.java", "perform", "9999", "com.nwlinc.contentmanager.jobs.jboss.schedule.CacheEngineSchedulable"
go

delete from logging_event
go