set transaction isolation level 
serializable

--Фантом 

begin transaction
insert Athlete(first_name,last_name,athlete_country_id,category) values('Fabio','Caruana',4,'C')
commit


delete from athlete where last_name = 'Caruana'