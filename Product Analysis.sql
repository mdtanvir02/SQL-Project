select * from sales;

select SaleDate,Amount,Customers from sales;

/* Calculate */
select SaleDate, Amount, Boxes, Amount/Boxes as AmountPerBox from sales;
select SaleDate, Amount, Boxes,Amount/Boxes 'Amount per box' from sales;

/* where  Condition */
select * from sales
where Amount> 10000;

select * from sales
where Amount> 10000
order by Amount;

select * from sales
where Amount> 10000
order by Amount desc;

/* Product Analysis */
select * from sales
where GeoID='g1'
order by PID,Amount desc;

select * from sales
where Amount> 10000
and SaleDate >= ' 2022-01-01';

/* Product Analysis if database have 2023 and 2024 data also then */
select SaleDate, Amount from sales
where Amount>10000 and year(SaleDate) = 2022
order by Amount desc;

/* looking Boxes 0 to 50 between */
select * from sales
where Boxes > 0 and Boxes <= 50;

/* But Using Between function if 0 boxes is available then it will be shown */
select * from sales
where Boxes between 0 and 50;

/*need Shipment happening just friday (0 for monday)*/
select SaleDate,Amount,Boxes, weekday(SaleDate) as 'Day of week'
from sales
where weekday(SaleDate)= 4;

/* CASE operator and Branching logic */
select SaleDate, Amount,
		case when Amount > 1000 then 'Under 1k'
             when Amount < 5000 then 'under 5k'
             when Amount <10000 then 'under 10k'
        else 'upper 10k'
        end as 'Amount catagory'
from sales






































