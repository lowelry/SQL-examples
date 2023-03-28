-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами
-- (Select all employees whose salaries are in the database, show with salaries)

select employee_name, monthly_salary from employee_salary_49 es
join salary_49 s on es.salary_id = s.id
join employees_49 e on es.employee_id = e.id;

-- 2. Вывести всех работников, у которых зарплата меньше 2000
-- (Select all employees with salary less than 2000)

select employee_name from employee_salary_49 es
join salary_49 s on es.salary_id = s.id
join employees_49 e on es.employee_id = e.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен
-- (Select all salary positions with no employees on them)

select monthly_salary, employee_name from employee_salary_49 es
join salary_49 s on es.salary_id = s.id
left join employees_49 e on es.employee_id = e.id
where employee_name is null;

-- 4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен
-- (Select all salary positions below 2000 with no employees on them)

select monthly_salary, employee_name from employee_salary_49 es
join salary_49 s on es.salary_id = s.id
left join employees_49 e on es.employee_id = e.id
where employee_name is null and monthly_salary < 2000;

-- 5. Найти всех работников, которым не назначена зарплата
-- (Select all employees who haven't been assigned a salary)

select employee_name, monthly_salary from employee_salary_49 es
join salary_49 s on es.salary_id = s.id
right join employees_49 e on es.employee_id = e.id
where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности
-- (Select all employees with their positions)

select employee_name, role_name from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id;

-- 7. Вывести имена и должности только Java разработчиков
-- (Select only Java developers names and positions)
 
select employee_name, role_name from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
where role_name like '%Java developer%';

-- 8. Вывести имена и долности только Python разработчиков
-- (Select only Python developers names and positions)

select employee_name, role_name from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
where role_name like '%Python developer%';

-- 9. Вывести имена и должность всех QA иненеров
-- (Select all QA engineers names and positions)

select employee_name, role_name from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров
-- (Select Manual QA engineers names and positions)

select employee_name, role_name from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
where role_name like '%Manual QA engineer%';

-- 11. Вывести имена и должность автоматизаторов QA
-- (Select Automation QA engineers names and positions)

select employee_name, role_name from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
where role_name like '%Automation QA engineer%';

-- 12. Вывести имена и зарплаты Junior специалистов
-- (Select Junior specialists names and positions)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
-- (Select Middle specialists names and positions)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
-- (Select Junior specialists names and positions)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
-- (Select Java developers salaries)

select role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков
-- (Select Python developers salaries)

select role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Python developer%';

-- 17. Вывести имена и зарплаты Python разработчиков
-- (Select Python developers names and salaries)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Junior Python developer%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
-- (Select Middle JavaScript developers names and salaries)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Middle JavaScript developer%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
-- (Select Senior Java developers names and salaries)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employees_49 e on re.employee_id = e.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Senior Java developer%';

-- 20. Вывести зарплаты Junior QA инженеров
-- (Select Junior QA engineers salaries)

select role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Junior%QA engineer%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
-- (Select Junior specialists average salary)

select avg(monthly_salary) from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
-- (Select JS developers amount of salaries)

select sum(monthly_salary) from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную зарплату QA инженеров
-- (Select QA engineers minimum salary)

select min(monthly_salary) from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%QA%';

-- 24. Вывести максимальную зарплату QA инженеров
-- (Select QA engineers maximum salary)

select max(monthly_salary) from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%QA%';

-- 25. Вывести количество QA инженеров
-- (Select the number of QA engineers)

select count(re.id)  from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов
-- (Select the number of Middle specialists)

select count(re.id)  from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
-- (Select the number of developers)

select count(re.id)  from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков
-- (Select developers salary fund (sum of salaries))

select sum(monthly_salary) from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join salary_49 s on es.salary_id = s.id
where role_name like '%developer%';

-- 29. Вывести имена, должности и зарплаты всех специалистов по возрастанию
-- (Select names, positions and salaries of all specialists, sorted by salary ascending)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join employees_49 e on es.employee_id = e.id
join salary_49 s on es.salary_id = s.id
order by monthly_salary;

-- 30. Вывести имена, должности и зарплаты всех специалистов, у которых зарплата от 1700 до 2300, по возрастанию
-- (Select names, positions and salaries of all specialists who have salaries from 1700 to 2300, sorted by salary ascending)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join employees_49 e on es.employee_id = e.id
join salary_49 s on es.salary_id = s.id
where monthly_salary between '1700' and '2300'
order by monthly_salary;

-- 31. Вывести имена, должности и зарплаты всех специалистов, у которых зарплата меньше 2300, по возрастанию
-- (Select names, positions and salaries of all specialists whose salary is less than 2300, sorted by salary ascending)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join employees_49 e on es.employee_id = e.id
join salary_49 s on es.salary_id = s.id
where monthly_salary < '2300'
order by monthly_salary;

-- 32. Вывести имена, должности и зарплаты всех специалистов, у которых зарплата равна 1100, 1500, 2000, по возрастанию
-- (Select names, positions and salaries of all specialists whose salary is 1100, 1500, 2000, sorted by salary ascending)

select employee_name, role_name, monthly_salary from roles_employee_49 re
join roles_49 r on re.role_id = r.id
join employee_salary_49 es on re.employee_id = es.employee_id
join employees_49 e on es.employee_id = e.id
join salary_49 s on es.salary_id = s.id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;