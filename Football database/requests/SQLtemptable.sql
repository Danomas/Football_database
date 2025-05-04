declare @TestTable as table (A int )


insert into @TestTable(A) values (1), (1), (1), (3), (5), (5), (7), (9), (9)

;with CTE as
(
select A, row_number() over (partition by A order by A) as Number
from @TestTable
)




select * from CTE

