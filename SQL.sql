--Output all fealds and string:
select * from students;

--Output all students in table:
select * from students;

--Output only ID of users:
select id from students;

--Output only usernames:
select name from students;

--Output only email of users:
select email from students;

--Output name and email of users:
select name, email from students;

--Output ID, name, email and creation date of users:
select id, name, email, created_on from students;

--Output users where password 12333:
select * from students where password like '12333';

--Output users who were created 2021-03-26 00:00:00:
select * from students where created_on='2021-03-26 00:00:00';

--Output users where have is the word "Анна" in the name:
select * from students where name like 'Анна%';

--Output users where have is "8" in the name at the end:
select * from students where name like '%8%';

--Output users where have is a letter "a" in the name:
select * from students where name like '%a%';

--Output users who were created 2021-07-12  00:00:00:
select * from students where created_on='2021-07-12 00:00:00';

--Output users who were created 2021-07-12  00:00:00 and have a password "1m313:"
select * from students where created_on='2021-07-12 00:00:00' and password='1m313';

--Output users who were created 2021-07-12  00:00:00 and have the word "Andrey" in the name:
select * from students where created_on='2021-07-12 00:00:00' and name like 'Andrey%';

--Output users who were created 2021-07-12  00:00:00 and have "8" in the name:
select * from students where created_on='2021-07-12 00:00:00' and name like '%8%';

--Output user with ID equal to 10:
select * from students where id='10';

--Output user with ID equal to 53:
select * from students where id='53';

--Output users with ID>40:
select * from students where id>'40';

--Output users with ID<30:
select * from students where id<'30';

--Output users with ID<27 or ID>88:
select * from students where id<'27' or id>'88';

--Output users with ID<37 or equal 37:
select * from students where id<'37' or id='37';

--Output users with ID>37 or equal 37:
select * from students where id>'37' or id='37';

--Output users with ID>80 but ID<90
select * from students where id>'80' and id<'90';

--Output users with ID between 80 and 90:
select * from students where id between 80 and 90;

--Output users who were password 12333, 1m313, 123313:
select * from students where password='12333' or password='1m313' or password='123313';

--Output users who were created 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00:
select * from students where created_on='2020-10-03 00:00:00' or created_on='2021-05-19 00:00:00' or created_on='2021-03-26 00:00:00';

--Output the minimum ID:
select min(id) from students;

--Output the maximum ID:
select max(id) from students;

--Output the number of users:
select id from students;

--Output ID, name, creation date. Sort in ascending order of the creation date users:
select id, name, created_on from students order by created_on asc;

--Output ID, name, creation date. Sort in descending order of the creation date users:
select id, name, created_on from students order by created_on desc;

