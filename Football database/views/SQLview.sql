if (object_id ('Athletee') IS NOT NULL )
	DROP VIEW Athletee

GO
CREATE VIEW Athletee AS
(SELECT
 ath.athlete_id, ath.first_name,ath.last_name,
COUNT( res.point_number) AS point_count,
COUNT( cp.championship_id) AS Champ_Count
FROM championship cp join competition cn 
on cp.championship_id = cn.championship_id join Result res
on res.competition_id = cn.competition_id right join Athlete ath
on ath.athlete_id = res.athlete_id


GROUP BY ath.athlete_id, ath.first_name,ath.last_name)
GO
SELECT * FROM Athletee
order by point_count desc
-- выводит спортсмена  количество забитых им голов и количество чемпионатов, в которых он участвовал