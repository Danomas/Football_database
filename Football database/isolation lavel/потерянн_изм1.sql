set transaction isolation level
read uncommitted

--Потерянные изменения

begin transaction 
select last_name from Athlete where athlete_id=1
update Athlete set last_name='Carlsson' where athlete_id=1

--Грязное чтение
set transaction isolation level
read uncommitted
begin transaction
select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit