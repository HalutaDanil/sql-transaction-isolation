-- | session 1

show transaction isolation level;

begin;

select * from pizzeria where name = 'Pizza Hut';

select * from pizzeria where name = 'Pizza Hut';

commit;

select * from pizzeria where name = 'Pizza Hut';

-- | end session 1


-- | session 2

show transaction isolation level;

begin;

update pizzeria set rating = 3.6 where name = 'Pizza Hut';

commit;

select * from pizzeria where name = 'Pizza Hut';

-- | end session 2
