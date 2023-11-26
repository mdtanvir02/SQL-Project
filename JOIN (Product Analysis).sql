/* Join Query : sales and people table */
select * from sales;
select  *from people;

select s.SaleDate, s.Amount, p.Salesperson,p.SPID, s.SPID
from sales s
join people p on s.SPID=p.SPID;

/* Join Query : Left Join */
select s.saleDate, s.Amount, pr.Product, p.Salesperson, p.Team
from sales s 
left join products pr on pr.PID= s.PID
left join people p on p.SPID = s.SPID
order by Amount desc;

/* Join Query : Condition with Join */
select s.saleDate, s.Amount, pr.Product, p.Salesperson, p.Team
from sales s 
left join products pr on pr.PID= s.PID
left join people p on p.SPID = s.SPID
where s.Amount < 500
and p.Team = 'Delish'
order by Amount desc;

select s.saleDate, s.Amount, pr.Product, p.Salesperson, p.Team
from sales s 
left join products pr on pr.PID= s.PID
left join people p on p.SPID = s.SPID
where s.Amount < 500
and p.Team = '';

select s.saleDate, s.Amount, pr.Product, p.Salesperson
from sales s 
join products pr on pr.PID= s.PID
join people p on p.SPID = s.SPID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and p.Team = ''
and g.Geo in ('New Zealand', 'India')
order by SaleDate desc;


