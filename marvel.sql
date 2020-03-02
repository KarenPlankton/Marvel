-- select * from movies;
-- select name from people;
-- -- Oops! Someone spelled Krusty The Clown's name wrong!
-- -- Change it to reflect the proper spelling (Crusty should be Krusty).
--  update people
--  set name = 'Krusty The Clown'
--  where id=13;
--  select * from people;
-- -- Return ONLY Homer Simpson's name from the 'people' table.
-- select *
-- from people
-- where name='Homer Simpson';
-- The cinema is showing 'Batman Begins', but Batman is DC,
-- not Marvel! Delete the entry from the 'movies' table.
-- select * from movies;
-- delete from movies
-- where id=9;
-- select * from movies;
-- We forgot one of the main characters! Add Bart Simpson to the 'people' table
-- insert into people(name)
-- values ('Bart Simpson');
-- select * from people;
-- Eric Cartman has decided to hijack our movie evening,
-- Remove him from the table of people.
-- delete from people
-- where id=11;
-- select * from people;
-- The cinema has just heard that they will be holding an exclusive midnight
-- showing of 'Avengers: Infinity War'!!
-- Create a new entry in the 'movies' table to reflect this.
-- insert into movies(title,year,show_time)
-- values('Avengers: Infinity War',2018,'24:00');
-- select * from movies;
-- The cinema would like to make the Iron Man movies a triple billing.
-- Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3"
-- to start two hours later.
-- select show_time
-- from movies
-- where id=3;
-- select * from movies;
-- -- select time '18:45' + '3:00';
update movies
set show_time = (select time '18:45' + '2:00')
where id=7;
select * from movies;

-- DELETE FROM people WHERE name LIKE 'M%';
-- select * from people;
