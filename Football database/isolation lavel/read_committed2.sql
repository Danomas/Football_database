set transaction isolation level
read committed

--Грязное чтение

begin transaction 
update Athlete set last_name='Carlsson' where athlete_id=1
rollback

commit

--Неповторяющееся чтение
set transaction isolation level
read committed
begin transaction
update Athlete set last_name='Carlsson' where athlete_id=1
commit