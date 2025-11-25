WITH CTE AS
(
    SELECT * FROM {{source('source','product_tbl')}}
)

select * from CTE