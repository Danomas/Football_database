set transaction isolation level read uncommitted
begin transaction
select a from W where a=1;
update W set b=1,c=1 where b=2 and c=3



select a from W where a=3;
select a from W where a=5




commit
rollback
select @@TRANCOUNT