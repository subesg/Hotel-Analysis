WITH hotel
AS
(
SELECT * from Project..[2018]
UNION
SELECT * from Project..[2019]
UNION
SELECT * from Project..[2020]
)
SELECT * from hotel
LEFT JOIN dbo.market_segment$
ON hotel.market_segment = market_segment$.market_segment
LEFT JOIN
Project..meal_cost$
on meal_cost$.meal = hotel.meal