set transaction isolation level
repeatable read

--��������������� ������
begin transaction

select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit

--������ 

begin transaction
select last_name from Athlete where athlete_id>40
select last_name from Athlete where athlete_id>40
commit




/*set transaction isolation level
reAD UNCOMMITTED
select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
select last_name from Athlete where athlete_id=1
commit*/
