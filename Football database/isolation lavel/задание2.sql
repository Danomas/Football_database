--���� ���������� ������� �������� � �������� � �������� ������ ������, � ����� �������� 1 ���� � 1 ������, ���� �������� ���, ���� ������ ���� �� ������� � �� �������� ������ � ���� ����������


drop table W;

create table [W](
	a smallint,
	b smallint,
	c smallint
	)
	Go

	insert into W values(1,2,3);
	insert into W values(2,3,4);
	insert into W values(3,4,5);

set transaction isolation level 
serializable
begin transaction 
 update W with (UPDLOCK) set a=5 where a=3
rollback
commit;

select @@TRANCOUNT
