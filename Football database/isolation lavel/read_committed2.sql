set transaction isolation level
read committed

--������� ������

begin transaction 
update Athlete set last_name='Carlsson' where athlete_id=1
rollback

commit

--��������������� ������
set transaction isolation level
read committed
begin transaction
update Athlete set last_name='Carlsson' where athlete_id=1
commit