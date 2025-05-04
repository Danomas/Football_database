set transaction isolation level
serializable

begin transaction
select * from test
update record set value=a+1 from test where record_id=3
commit