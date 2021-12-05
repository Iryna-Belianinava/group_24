--Create table employees:
--id. Serial, primary key
--employee_name. Varchar(50), not null
create table employees(
   id serial primary key,
   employee_name varchar(50) not null
)

--Create table salary:
--id. Serial, primary key
--monthly_salary. Int, not null
create table salary(
   id serial primary key,
   monthly_salary int not null
)

--Create table employee_salary:
--id. Serial, primary key
--employee_id. Int, not null, unique
--salary_id. Int, not null
create table employee_salary(
   id serial primary key,
   employee_id int unique not null,
   salary_id int not null
)

--Fill in the salary table 16 strings:
insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);

--Fill in the employee table 70 strings:
insert into employees(employee_name)
values ('Jakie Wright'),
       ('Vernon Newton'),
       ('Herman Weeler'),
       ('James Moore'),
       ('Robert Thomas'),
       ('Ruth Rose'),
       ('Jennifer Jones'),
       ('Juan Backer'),
       ('Denis Barker'),
       ('Thomas Walluse'),
       ('Dora Smith'),
       ('Alfred Teylor'),
       ('Jerry Klein'),
       ('Brian Bayli'),
       ('Annie Morre'),
       ('Helen Willams'),
       ('Maria Beck'),
       ('Lucine Hall'),
       ('Cindy Terner'),
       ('Glenda Murray'),
       ('Donald More'),
       ('Jennifer Jones'),
       ('Melissa Jordan'),
       ('Marvin Graves'),
       ('Laura Baily'),
       ('Marylin Erickson'),
       ('Alfred Teylor'),
       ('Jerry Klein'),
       ('Brian Bayli'),
       ('Annie Morre'),
       ('Helen Willams'),
       ('Maria Beck'),
       ('Lucine Hall'),
       ('Cindy Terner'),
       ('Glenda Murray'),
       ('Donald More'),
       ('Jennifer Jones'),
       ('Melissa Jordan'),
       ('Marvin Graves'),
       ('Laura Baily'),
       ('Marylin Erickson'),
       ('Jakie Wright'),
       ('Vernon Newton'),
       ('Herman Weeler'),
       ('James Moore'),
       ('Robert Thomas'),
       ('Ruth Rose'),
       ('Jennifer Jones'),
       ('Juan Backer'),
       ('Denis Barker'),
       ('Thomas Walluse'),
       ('Dora Smith'),
       ('Alfred Teylor'),
       ('Jerry Klein'),
       ('Brian Bayli'),
       ('Annie Morre'),
       ('Helen Willams'),
       ('Maria Beck'),
       ('Lucine Hall'),
       ('Jennifer Jones'),
       ('Lucine Hall'),
       ('Cindy Terner'),
       ('Glenda Murray'),
       ('Donald More'),
       ('Jennifer Jones'),
       ('Melissa Jordan'),
       ('Marvin Graves'),
       ('Laura Baily'),
       ('Marylin Erickson'),
       ('Jakie Wright');

--Fill in the employee_salary table 40 strings.
--In 10 strings out of 40 insert non-existent employee_id:     
insert into employee_salary(employee_id, salary_id)
values (1, 3),
       (2, 7),
       (3, 1),
       (4, 5),
       (5 ,4),
       (6, 8),
       (7, 6),
       (8, 10),
       (9, 11),
       (10, 12),
       (11, 13),
       (12, 14),
       (13, 15),
       (14, 16),
       (15, 1),
       (16, 2),
       (17, 3),
       (18, 4),
       (19, 5),
       (20, 6),
       (21, 7),
       (22, 8),
       (23, 9),
       (24, 10),
       (25, 11),
       (26, 12),
       (27, 13),
       (28, 14),
       (29, 15),
       (30, 16),
       (71, 1),
       (72, 2),
       (73, 3),
       (74, 4),
       (75, 5),
       (76, 6),
       (77, 7),
       (78, 8),
       (79, 9),
       (80, 10);
      
select * from employees;
select * from salary; 
select * from employee_salary;

--Create table roles:
--id. Serial, primary key
--role_name. Int, not null, unique
create table roles(
   id serial primary key,
   role_name int unique not null
)

--Change column role_name from type int to varchar(30):
alter table roles alter column role_name type varchar(30);

--Fill in the roles table 20 strings:
insert into roles (id, role_name)
values (1, 'Junior Python developer'),
       (2, 'Middle Python developer'),
       (3, 'Senior Python developer'),
       (4, 'Junior Java developer'),
       (5, 'Middle Java developer'),
       (6, 'Senior Java developer'),
       (7, 'Junior JavaScript developer'),
       (8, 'Middle JavaScript developer'),
       (9, 'Senior JavaScript developer'),
       (10, 'Junior Manual QA engineer'),
       (11, 'Middle Manual QA engineer'),
       (12, 'Senior Manual QA engineer'),
       (13, 'Project Manager'),
       (14, 'Designer'),
       (15, 'HR'),
       (16, 'CEO'),
       (17, 'Sales manager'),
       (18, 'Junior Automation QA engineer'),
       (19, 'Middle Automation QA engineer'),
       (20, 'Senior Automation QA engineer');

select * from roles;

--Create table roles_employee:
--id. Serial, primary key
--employee_id. Int, not null, unique (foreign key for employees table, id field)
--role_id. Int, not null (foreign key for roles table, id field)
create table roles_employee(
   id serial primary key,
   employee_id int unique not null,
   role_id int not null,
   foreign key (employee_id)
         references employees(id),
   foreign key (role_id)
         references roles(id)
)

--Fill in the roles_employee table 40 strings:
insert into roles_employee(employee_id, role_id)
values (1, 5),
       (2, 7),
       (3, 1),
       (4, 20),
       (5, 13),
       (6, 12),
       (7, 8),
       (8, 2),
       (9, 3),
       (10, 6),
       (11, 4),
       (12, 9),
       (13, 10),
       (14, 11),
       (15, 14),
       (16, 15),
       (17, 18),
       (18, 16),
       (19, 17),
       (20, 19),
       (21, 5),
       (22, 17),
       (23, 13),
       (24, 3),
       (25, 7),
       (26, 8),
       (27, 10),
       (28, 15),
       (29, 20),
       (30, 19),
       (31, 4),
       (32, 9),
       (33, 11),
       (34, 19),
       (35, 2),
       (36, 5),
       (37, 1),
       (38, 3),
       (39, 14),
       (40, 15);

select * from roles_employee;