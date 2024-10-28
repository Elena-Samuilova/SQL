	--1. Создать таблицу 'employees'
-- id. Serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar (50) not null
);

	--2. Наполнить таблицу employees 70 строками.

insert into employees(employee_name)
values  ('Robert Jenkins'),
		('Shane Peters'),
		('Leslie McCormick'),
		('Christopher Jackson'),
		('Benjamin Wheeler'),
		('Vernon Williamson'),
		('Karen Baker'),
		('Michael Alvarado'),
		('Kathy Spencer'),
		('Joseph Christensen'),
		('Shirley Rowe'),
		('Tanya Price'),
		('Lucy Cook'),
		('Sandra Sanchez'),
		('Ryan Adams'),
		('Michael Coleman'),
		('Sonia Smith'),
		('Nicole Lyons'),
		('Barbara Smith'),
		('Loretta Fisher'),
		('Tracy Martin'),
		('Debra Howard'),
		('Robin King'),
		('Michelle Cummings'),
		('Daniel Reyes'),
		('Harvey Fletcher'),
		('Michael Lopez'),
		('Harry Freeman'),
		('Carmen King'),
		('Katherine Johnson'),
		('Donna Curry'),
		('Jessie Simmons'),
		('Eileen Rogers'),
		('William Guerrero'),
		('Kimberly Kelley'),
		('Richard Rhodes'),
		('Corey Robinson'),
		('Steve Smith'),
		('Mark Smith'),
		('Frances Delgado'),
		('Jim Howard'),
		('Mabel Barnes'),
		('Keith Hines'),
		('Marsha Fletcher'),
		('Shirley Hughes'),
		('Gladys Hicks'),
		('John Smith'),
		('Michael Davis'),
		('David Harrison'),
		('Gary Martin'),
		('Michelle Ward'),
		('Richard Thomas'),
		('Marie Sims'),
		('Katherine Bowman'),
		('Sharon Taylor'),
		('Matthew Jones'),
		('Carl Padilla'),
		('Stephen Jenkins'),
		('Amy Castro'),
		('Jeffrey Nelson'),
		('Anna Williams'),
		('Barbara Webb'),
		('Joe Harrington'),
		('Kelly Ross'),
		('Anita Franklin'),
		('Katherine Jackson'),
		('Joan Watkins'),
		('Dana Williams'),
		('David Perez'),
		('Allen Dawson');
	
	--3. Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary1(
	id serial primary key,
	monthly_salary int not null
);

	--4. Наполнить таблицу salary1 15 строками:

insert into salary1 (monthly_salary)
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
	
	--5. Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int unique not null, 
	salary_id int not null	
);

	--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(4, 8),
		(6, 10),
		(29, 12),
		(22, 2),
		(38, 5),
		(49, 15),
		(13, 13),
		(45, 9),
		(50, 12),
		(35, 1),
		(44, 11),
		(51, 1),
		(63, 14),
		(70, 10),
		(39, 3),
		(64, 7),
		(18, 8),
		(66, 9),
		(30, 5),
		(73, 14),
		(84, 9),
		(79, 13),
		(82, 1),
		(99, 7),
		(85, 11),
		(100, 10),
		(95, 8),
		(77, 6),
		(88, 12);
	
	--7. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles1(
	id serial primary key,
	role_name int unique not null
);

	--8. Поменять тип столбца role_name с int на varchar(30)

alter table roles1 
alter column role_name type varchar(30);

	--9. Наполнить таблицу roles1 20 строками:

insert into roles1(role_name)
values ('Junior_Python_developer'),
		('Middle_Python_developer'),
		('Senior_Python_developer'),
		('Junior_Java_developer'),
		('Middle_Java_developer'),
		('Senior_Java_developer'),
		('Junior_JavaScript_developer'),
		('Middle_JavaScript_developer'),
		('Senior_JavaScript_developer'),
		('Junior_Manual_QA_engineer'),
		('Middle_Manual_QA_engineer'),
		('Senior_Manual_QA_engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior_Automation_QA_engineer'),
		('Middle_Automation_QA_engineer'),
		('Senior_Automation_QA_engineer');
	
	--10. Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles1(id)
);

	--11. Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(4, 8),
		(1, 10),
		(2, 12),
		(8, 2),
		(35, 16),
		(39, 15),
		(14, 13),
		(46, 9),
		(52, 5),
		(19, 1),
		(64, 11),
		(70, 20),
		(61, 14),
		(27, 10),
		(30, 19),
		(55, 7),
		(18, 10),
		(41, 9),
		(36, 11),
		(59, 13),
		(48, 17),
		(66, 13),
		(44, 1),
		(38, 7),
		(51, 11),
		(40, 10),
		(60, 8),
		(69, 6),
		(17, 12);
	
	

	