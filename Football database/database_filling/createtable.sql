use Football
CREATE TABLE [Athlete] (
  [athlete_id] smallint NOT NULL IDENTITY (1, 1) ,
  [first_name] varchar (80),
  [last_name] varchar (80),
  [athlete_country_id] smallint ,
  [category] varchar (80), 
 PRIMARY KEY ([athlete_id])
) ON [PRIMARY]
GO

CREATE TABLE [Team] (
  [team_id] smallint NOT NULL IDENTITY (1, 1) ,
  [Team_name] varchar (80),
  [team_trainer] tinyint ,
  [date_founding] datetime , 
 PRIMARY KEY ([team_id])
) ON [PRIMARY]
GO

CREATE TABLE [Result] (
  [result_id] smallint NOT NULL IDENTITY (1, 1) ,
  [time_point] smallint ,
  [point_number] smallint ,
  [athlete_id] smallint ,
  [competition_id] smallint , 
 PRIMARY KEY ([result_id])
) ON [PRIMARY]
GO

CREATE TABLE [Trainer] (
  [trainer_id] tinyint NOT NULL IDENTITY (1, 1) ,
  [first_name] varchar (80),
  [last_name] varchar (80),
  [date_birthday] datetime , 
 PRIMARY KEY ([trainer_id])
) ON [PRIMARY]
GO

CREATE TABLE [competition] (
  [competition_id] smallint NOT NULL IDENTITY (1, 1) ,
  [team_id_1] smallint NOT NULL ,
  [team_id_2] smallint NOT NULL ,
  [result_team_1] tinyint ,
  [result_team_2] tinyint ,
  [competition_place] smallint ,
  [championship_id] smallint NOT NULL , 
 PRIMARY KEY ( [competition_id])
) ON [PRIMARY]
GO

CREATE TABLE [place] (
  [place_id] smallint NOT NULL IDENTITY (1, 1) ,
  [place_name] varchar (80),
  [city_name] varchar (80),
  [country_id] smallint , 
 PRIMARY KEY ([place_id])
) ON [PRIMARY]
GO

CREATE TABLE [record] (
  [record_id] tinyint NOT NULL IDENTITY (1, 1) ,
  [athlete_id] smallint ,
  [value] smallint ,
  [unit] varchar (80),
  [record_type_name] smallint , 
 PRIMARY KEY ([record_id])
) ON [PRIMARY]
GO

CREATE TABLE [record_type] (
  [record_type_id] smallint NOT NULL IDENTITY (1, 1) ,
  [record_type_name] varchar (80) , 
 PRIMARY KEY ([record_type_id])
) ON [PRIMARY]
GO

CREATE TABLE [country] (
  [country_id] smallint NOT NULL IDENTITY (1, 1) ,
  [country_name] varchar (80), 
 PRIMARY KEY ([country_id])
) ON [PRIMARY]
GO

CREATE TABLE [history_team_athlete] (
  [history_id] tinyint NOT NULL IDENTITY (1, 1) ,
  [athlete_id] smallint ,
  [team_id] smallint ,
  [date_begin] datetime ,
  [number_of_team] tinyint , 
 PRIMARY KEY ([history_id])
) ON [PRIMARY]
GO

CREATE TABLE [championship] (
  [championship_id] smallint NOT NULL IDENTITY (1, 1) ,
  [championship_name] varchar (80),
  [date_begin] datetime ,
  [date_end] datetime ,
  [prize_id] smallint ,
  [country_id] smallint , 
 PRIMARY KEY ([championship_id])
) ON [PRIMARY]
GO

CREATE TABLE [prize] (
  [prize_id] smallint NOT NULL IDENTITY (1, 1) ,
  [prize_name] varchar (80), 
 PRIMARY KEY ([prize_id])
) ON [PRIMARY]
GO

CREATE TABLE [result_championship] (
  [team_id] smallint NOT NULL ,
  [championship_id] smallint NOT NULL ,
  [place] smallint ,
  [score] smallint ,
  [wins] smallint ,
  [losing] smallint , 
 PRIMARY KEY ([team_id], [championship_id])
) ON [PRIMARY]
GO




ALTER TABLE [Athlete] ADD FOREIGN KEY (athlete_country_id) REFERENCES [country] ([country_id]);
				
ALTER TABLE [Team] ADD FOREIGN KEY (team_trainer) REFERENCES [Trainer] ([trainer_id]);
				
ALTER TABLE [Result] ADD FOREIGN KEY (athlete_id) REFERENCES [Athlete] ([athlete_id]);
				
ALTER TABLE [Result] ADD FOREIGN KEY (competition_id) REFERENCES [competition] ([competition_id]);
				
ALTER TABLE [competition] ADD FOREIGN KEY (team_id_1) REFERENCES [Team] ([team_id]);
				
ALTER TABLE [competition] ADD FOREIGN KEY (team_id_2) REFERENCES [Team] ([team_id]);
				
ALTER TABLE [competition] ADD FOREIGN KEY (competition_place) REFERENCES [place] ([place_id]);
				
ALTER TABLE [competition] ADD FOREIGN KEY (championship_id) REFERENCES [championship] ([championship_id]);
				
ALTER TABLE [place] ADD FOREIGN KEY (country_id) REFERENCES [country] ([country_id]);
				
ALTER TABLE [record] ADD FOREIGN KEY (athlete_id) REFERENCES [Athlete] ([athlete_id]);
				
ALTER TABLE [record] ADD FOREIGN KEY (record_type_name) REFERENCES [record_type] ([record_type_id]);
				
ALTER TABLE [history_team_athlete] ADD FOREIGN KEY (athlete_id) REFERENCES [Athlete] ([athlete_id]);
				
ALTER TABLE [history_team_athlete] ADD FOREIGN KEY (team_id) REFERENCES [Team] ([team_id]);
				
ALTER TABLE [championship] ADD FOREIGN KEY (prize_id) REFERENCES [prize] ([prize_id]);
				
ALTER TABLE [championship] ADD FOREIGN KEY (country_id) REFERENCES [country] ([country_id]);
				
ALTER TABLE [result_championship] ADD FOREIGN KEY (team_id) REFERENCES [Team] ([team_id]);
				
ALTER TABLE [result_championship] ADD FOREIGN KEY (championship_id) REFERENCES [championship] ([championship_id]);
