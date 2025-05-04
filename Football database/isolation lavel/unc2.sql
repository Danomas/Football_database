set transaction isolation level 
read uncommitted
--Потерянные изменения
begin transaction 
select last_name from Athlete where athlete_id=1
update Athlete set last_name='17' where athlete_id=1
rollback 
commit

--Грязное чтение
begin transaction 
update Athlete set last_name='17' where athlete_id=1
rollback
commit


select @@TRANCOUNT


update Athlete set last_name='ANDERSON' where athlete_id=1