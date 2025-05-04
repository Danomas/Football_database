set transaction isolation level
read committed

--Грязное чтение

begin transaction

select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit

--Неповторяющееся чтение

set transaction isolation level 
read committed

begin transaction

select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit