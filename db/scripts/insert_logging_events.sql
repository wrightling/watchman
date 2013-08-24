insert into logging_event
      select 1, '2013-05-03 07:26:53', "Message 1", "INFO"
union select 2, '2013-05-03 07:27:44', "Message 2", "INFO"
go

insert into logging_event
      select 3, '2013-05-04 07:27:44', "Message 3", "INFO"
union select 4, '2013-05-05 07:27:44', "Message 4", "INFO"
go

insert into logging_event
      select 5, '2013-05-06 07:27:44', "Message 5", "INFO"
union select 6, '2013-05-07 07:27:44', "Message 6", "INFO"
go

delete from logging_event
go