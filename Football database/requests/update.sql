update championship
set championship_name='FIFA  PLAY-OFF'
where championship_name='UEFA PLAY-OFF 2010-11'      -- �������� �������� ����������


update Athlete                                 -- ������ ������� ��� ��������� ��������� �
set category='a'
where category is null

update record                                  -- ������ ����������� �� ������
set athlete_id=17
where record_type_name=6

update history_team_athlete
set team_id=1, number_of_team=99              --  ������ � �� ������� � ����� � ������� � ������ ������� ��� ���������
where athlete_id=19
