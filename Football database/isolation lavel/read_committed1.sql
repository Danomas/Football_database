set transaction isolation level
read committed

--������� ������

begin transaction

select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit

--��������������� ������

set transaction isolation level 
read committed

begin transaction

select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit