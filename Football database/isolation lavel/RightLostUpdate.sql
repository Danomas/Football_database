drop table test
create table test(
	a smallint
	);
insert into test values(1)

set transaction isolation level
serializable

begin transaction
update test set a=(select value from record where record_id=3)
select * from test

update record set value=a+1 from test where record_id=3
commit

select value from record where record_id=3
update record set value=17 where record_id=3