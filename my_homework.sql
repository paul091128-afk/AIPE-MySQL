use my_titanic;
select * from full_passengers;

select sex, count(sex) from full_passengers group by sex;

select id, pname from full_passengers where id >= 591 and id <= 883;

