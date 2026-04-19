-- | session 1

begin;

update pizzeria set rating = 5
where name = 'Pizza Hut';

select * from pizzeria
where name = 'Pizza Hut';
commit;

-- | end session 1


-- | session 2

select * from pizzeria
where name = 'Pizza Hut';

select * from pizzeria
where name = 'Pizza Hut';

-- | end session 2
