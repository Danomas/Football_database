set transaction isolation level 
repeatable read

--Неповторяющееся чтение

begin transaction 

update Athlete set last_name='Carlsson' where athlete_id=1

commit

--Фантом 

begin transaction
insert Athlete(first_name,last_name,athlete_country_id,category) values('Fabio','Caruana',4,'C')
commit

delete from athlete where last_name = 'Caruana'


/*set transaction isolation level 
repeatable read
begin transaction
update Athlete set last_name='Carlsson' where athlete_id=1
rollback

select @@TRANCOUNT*/