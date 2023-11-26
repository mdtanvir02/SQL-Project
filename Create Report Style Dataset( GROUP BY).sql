select GeoID, sum(amount), avg(Amount), sum(Boxes)
from sales
group by GeoID;

/* create complex query using JOIN */
select g.Geo, sum(amount), avg(Amount), sum(Boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.Geo
order by g.Geo;

select pr.Category, p.Team, sum(Boxes)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where p.Team <> ''            /* who are not null */
group by pr.Category, p.Team
order by pr.Category, p.Team desc;

/* Using LIMIT top 10 selling product */
select pr.Product, sum(s.Amount) as 'Total Amount'
from sales s
join products pr on pr.PID = s.PID
group by pr.Product
order by 'Total amount' desc
limit 10;  
