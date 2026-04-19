-- | session 1

SHOW TRANSACTION ISOLATION LEVEL;

begin;

select * from pizzeria where name = 'Pizza Hut';

update pizzeria set rating = 4 where name = 'Pizza Hut';

commit;

select * from pizzeria where name = 'Pizza Hut';

-- | end session 1


-- | session 2

begin;

select * from pizzeria where name = 'Pizza Hut';

update pizzeria set rating = 3.6 where name = 'Pizza Hut';

commit;

select * from pizzeria where name = 'Pizza Hut';

-- | end session 2
