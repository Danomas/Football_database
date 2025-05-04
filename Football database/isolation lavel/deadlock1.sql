set transaction isolation level 
repeatable read
begin transaction
select last_name from Athlete where athlete_id=1
update Athlete set last_name='2' where athlete_id=2


commit;
select last_name from Athlete where athlete_id in (1,2)

select @@TRANCOUNT
rollback