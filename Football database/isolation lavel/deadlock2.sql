set transaction isolation level 
repeatable read
begin transaction
select last_name from Athlete where athlete_id=2
update Athlete set last_name='3' where athlete_id=1

commit
rollback