--есть транзакция которая работает с таблицей с ограмным колвом данных, и хочет обновить 1 поле в 1 записи, надо замутить так, чтоб нельзя было не считать и не изменить данные в этой транзакции


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
