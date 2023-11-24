select * from people;

/* selcet team */
select * from people
where Team='Delish' or Team='Jucies';

/* selcet team if 2 and more */
select * from people
where Team in ('Delish','Jucies', 'Yummies');

/* pattern matching---- like operator use */
/* Find B letter salesperson */
select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';
