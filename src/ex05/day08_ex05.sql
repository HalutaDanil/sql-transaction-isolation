-- | session 1

show transaction isolation level;

begin;

select sum(rating) from pizzeria;

select sum(rating) from pizzeria;

commit;

select sum(rating) from pizzeria;

-- | end session 1


-- | session 2

show transaction isolation level;

begin;

insert into pizzeria(id, name, rating) values (10, 'Kazan Pizza', 5);

commit;

select sum(rating) from pizzeria;

-- | end session 2
