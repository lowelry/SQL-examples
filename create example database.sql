-- 1. Создать таблицу employees_49 со следующей инфромацией:
-- (Create table employees_49 with the following information)
--	id, serial,  primary key
--	employee_name, Varchar(50), not null

create table employees_49
(
	id serial primary key,
	employee_name Varchar(50) not null
);

-- 2. Заполнить таблицу employees_49 70ю  строками
-- (Fill the table employees_49 with 70 rows)

insert into employees_49 (employee_name)
values ('Angelina'), ('Scarlett'), ('Margot'), ('Emma'), ('Jennifer'), ('Gal'), ('Margaret'), ('Dakota'), ('Lupita'), ('Charlize'),
	('Emily'), ('Alicia'), ('Emma'), ('Brie'), ('Natalie'), ('Lily'), ('Keira'), ('Olivia'), ('Mila'), ('Rachel'), ('Jessica'),
	('Emilia'), ('Julia'), ('Kate'), ('Cate'), ('Saoirse'), ('Jennifer'), ('Anne'), ('Sandra'), ('Reese'), ('Nicole'), ('Amy'),
	('Gemma'), ('Tessa'), ('Zoe'), ('Yara'), ('Zendaya'), ('Emma'), ('Chloe'), ('Elle'), ('Dove'), ('Madison'), ('Hailee'),
	('Victoria'), ('Bella'), ('Kaley'), ('Anna'), ('Emily'), ('Amber'), ('Megan'), ('Selena'), ('Lindsay'), ('Kristen'), ('Mandy'),
	('Ashley'), ('Vanessa'), ('Hilary'), ('Alyssa'), ('Jennifer'), ('Jordana'), ('Rosario'), ('Michelle'), ('Zoe'), ('Jada'),
	('Gabrielle'), ('Taraji'), ('Viola'), ('Octavia'), ('Regina'), ('Issa');

-- 3. Создать таблицу salary_49 со следующей инфромацией:
-- (Create table salary_49 with the following information)
--	id, serial,  primary key
--	monthly_salary, int, not null

create table salary_49
(
	id serial primary key,
	monthly_salary Int not null
);

-- 4. Заполнить таблицу salary_49 следующими 15ю  строками:
-- (Fill the table employees_49 with the following 16 rows)
--	1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500

insert into salary_49 (monthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900), (2000), (2100),
	(2200), (2300), (2400), (2500);

-- 5. Создать таблицу employee_salary_49 со следующей инфромацией:
-- (Create table employee_salary_49 with the following information)
--	id, serial,  primary key
--	employee_id, int, not null, unique
--	salary_id, int, not null

create table employee_salary_49
(
	id Serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
);

-- 6. Заполнить таблицу employee_salary_49 40а строками, 10 из которых должны содержать невалидные employee_id
-- (Fill the table employee_salary_49 with 40 rows, 10 of them must contain invalid employee_id)

insert into employee_salary_49 (employee_id, salary_id)
values (66, 7), (15, 1), (68, 2), (54, 2), (46, 1), (13, 7), (60, 9), (9, 9), (1, 16), (33, 14), (43, 5), (61, 15), (52, 14),
	(24, 11), (63, 2), (36, 4), (10, 12), (50, 13), (44, 4), (37, 1), (19, 1), (70, 5), (4, 9), (23, 6), (29, 10), (11, 10),
	(35, 3), (62, 5), (16, 8), (45, 2), (95, 15), (72, 3), (97, 3), (74, 11), (79, 10), (71, 7), (87, 10), (93, 11), (85, 2),
	(81, 1);

-- 7. Создать таблицу roles_49 со следующей инфромацией:
-- (Create table roles_49 with the following information)
--	id, serial,  primary key
--	role_name, int, not null, unique

create table roles_49
(
	id Serial primary key,
	role_name int not null unique
);

-- 8. Изменить тип данных role_name с int на varchar(30)
-- (Change role_name datatype from int to varchar(30))

alter table roles_49 alter column role_name type varchar(30);

-- 9. Заполнить таблицу roles_49 следующими 20ю  строками:
-- (Fill the table employees_49 with the following 20 rows)
--	Junior Python developer, Middle Python developer, Senior Python developer, Junior Java developer, Middle Java developer,
--	Senior Java developer, Junior JavaScript developer, Middle JavaScript developer, Senior JavaScript developer,
--	Junior Manual QA engineer, Middle Manual QA engineer, Senior Manual QA engineer, Project Manager, Designer, HR, CEO,
--	Sales manager, Junior Automation QA engineer, Middle Automation QA engineer, Senior Automation QA engineer

insert into roles_49 (role_name)
values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'), ('Junior Java developer'),
	('Middle Java developer'), ('Senior Java developer'), ('Junior JavaScript developer'), ('Middle JavaScript developer'),
	('Senior JavaScript developer'), ('Junior Manual QA engineer'), ('Middle Manual QA engineer'), ('Senior Manual QA engineer'),
	('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'), ('Junior Automation QA engineer'),
	('Middle Automation QA engineer'), ('Senior Automation QA engineer');

-- 10. Создать таблицу roles_employee_49 со следующей инфромацией:
-- (Create table roles_49 with the following information)
--	id, serial,  primary key
--	employee_id, int, not null, unique (foreign key for table employees_49, field id)
--	role_id, int, not null (foreign key for table roles_49, field id)

create table roles_employee_49
(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees_49 (id),
	foreign key (role_id) references roles_49 (id)
);

-- 11. Заполнить таблицу roles_employee_49 40а строками
-- (Fill the table employees_49 with 40 rows)

insert into roles_employee_49 (employee_id, role_id)
values (4, 20), (20, 9), (8, 9), (2, 2), (32, 19), (9, 12), (22, 19), (6, 20), (14, 20), (30, 14), (27, 19), (15, 1), (26, 17),
	(36, 19), (31, 1), (7, 3), (18, 11), (23, 14), (37, 7), (12, 12), (39, 18), (38, 10), (13, 12), (34, 5), (33, 13), (21, 4),
	(29, 12), (25, 10), (19, 11), (40, 9), (5, 10), (28, 15), (35, 2), (24, 20), (1, 14), (17, 3), (3, 9), (16, 9), (11, 18),
	(10, 17);
