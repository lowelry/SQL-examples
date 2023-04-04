-- Предусловия: существует таблица под названием "students" со следующей информацией:
-- (Preconditions: there is the table called "students" with the following information)
--	id, name, email, password, created_on

-- 1. Вывести все поля и все строки
-- (Select all fields and lines)

select * from students;

-- 2. Вывести всех студентов в таблице
-- (Select all students)

select name from students;

-- 3. Вывести только Id пользователей
-- (Select only users id)

select id from students;

-- 4. Вывести только имена пользователей
-- (Select only users names)

select name from students;

-- 5. Вывести только email пользователей
-- (Select only users emails)

select email from students;

-- 6. Вывести имя и email пользователей
-- (Select users name and emails)

select email, name from students;

-- 7. Вывести id, имя, email и дату создания пользователей
-- (Select users id, names, emails and creation date)

select id, name, email, created_on from students;

-- 8. Вывести пользователей, где password 12333
-- (Select users with password 12333)

select * from students where password = '12333';

-- 9. Вывести пользователей, которые были созданы 2021-03-26 00:00:00
-- (Select users who were created 2021-03-26 00:00:00)

select * from students where created_on = '2021-03-26 00:00:00';

-- 10. Вывести пользователей, где в имени есть слово Анна
-- (Select users with the word Anna in the name)

select * from students where name like '%Anna%';

-- 11. Вывести пользователей, где в имени в конце есть 8
-- (Select users with 8 at the end of the name)

select * from students where name like '%8';

-- 12. Вывести пользователей, где в имени в есть буква а
-- (Select users with the the letter a in the name)

select * from students where name like '%a%';

-- 13. Вывести пользователей, которые были созданы 2021-07-12 00:00:00
-- (Select users who were created 2021-07-12 00:00:00)

select * from students where created_on = '2021-07-12 00:00:00';

-- 14. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
-- (Select users who were created on 2021-07-12 00:00:00 and have a password 1m313)

select * from students where created_on = '2021-07-12 00:00:00' and password = '1m313';

-- 15. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
-- (Select users who were created on 2021-07-12 00:00:00 and have word Andrey in the name)

select * from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

-- 16. Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
-- (Select users who were created on 2021-07-12 00:00:00 and have 8 in the name)

select * from students where created_on = '2021-07-12 00:00:00' and name like '%8%';

-- 17. Вывести пользователей, у которых id равен 110
-- (Select users with id equal to 110)

select * from students where id = '110';

-- 18. Вывести пользователей, у которых id равен 153
-- (Select users with id equal to 153)

select * from students where id = '153';

-- 19. Вывести пользователей, у которых id больше 140
-- (Select users with id over 140)

select * from students where id > '140';

-- 20. Вывести пользователей, у которых id меньше 130
-- (Select users with id under 130)

select * from students where id < '130';

-- 21. Вывести пользователей, у которых id меньше 127 или больше 188
-- (Select users with id under 127 or over 188)

select * from students where id < '127' or id > '188'

-- 22. Вывести пользователя у которых id меньше либо равно 137
-- (Select users with id under or equal 137)

select * from students where id <= '137';

-- 23. Вывести пользователя у которых id больше либо равно 137
-- (Select users with id over or equal 137)

select * from students where id >= '137'

-- 24. Вывести пользователя у которых id больше 180 но меньше 190
-- (Select users with id over 180 and under 137)

select * from students where id > '180' and id < '190';

-- 25. Вывести пользователя у которых id между 180 и 190
-- (Select users with id between 180 and 190)

select * from students where id between '180' and '190';

-- 26. Вывести пользователей где password равен 12333, 1m313, 123313
-- (Select users with password 12333 or 1m313 or 123313)

select * from students where password in ('1233', '1m313', '123313');

-- 27. Вывести пользователей, которые были созданы 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
-- (Select users who were created 2020-10-03 00:00:00 or 2021-05-19 00:00:00 or 2021-03-26 00:00:00)

select * from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- 28. Вывести минимальный id
-- (Select minimum id value)

select min(id) from students;

-- 29. Вывести максимальный id
-- (Select maximum id value)

select max(id) from students;

-- 30. Вывести количество пользователей
-- (Select the number of users)

select count(id) from students;

-- 31. Вывести id пользователей, имена, даты создания пользователей. Отсортировать по порядку возрастания даты добавления пользоватлеля
-- (Select users id, names, users creation dates. Sort in ascending order by date added)

select id, name, created_on from students order by created_on;

-- 32. Вывести id пользователей, имена, даты создания пользователей. Отсортировать по порядку убывания даты добавления пользоватлеля
-- (Select users id, names, users creation dates. Sort in descending order by date added)

select id, name, created_on from students order by created_on desc;
