-- | session 1

begin;

update pizzeria set rating = 3.22
where id = 1;

update pizzeria set rating = 3.44
where id = 2;

commit;

-- | end session 1


-- | sessionn 2

begin;

update pizzeria set rating = 3.33
where id = 2;

update pizzeria set rating = 3.55
where id = 1;

commit;

-- | end session 2
