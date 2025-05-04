set transaction isolation level
serializable

--Фантом 
begin transaction 
select last_name from Athlete where athlete_id<40
--select last_name from Athlete where athlete_id>40
commit