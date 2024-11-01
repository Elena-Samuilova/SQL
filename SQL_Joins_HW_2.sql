--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_id
join salary1 on salary1.id = salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_id
join salary1 on salary1.id = salary_id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.)

select monthly_salary from salary1
left join employee_salary on salary1.id = employee_salary.salary_id
where salary_id is null;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from salary1
left join employee_salary on salary1.id = employee_salary.salary_id
where salary_id is null and monthly_salary < 2000;

 --5. Найти всех работников кому не начислена ЗП.

select employee_name from employees
left join employee_salary on employees.id = employee_id
where salary_id is null;

 --6. Вывести всех работников с названиями их должности.

select employee_name, role_name from employees
join roles_employee on employee_id = employees.id
join roles1 on role_id = roles1.id;

 --7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name from employees
join roles_employee on employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%Java_developer';

 --8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name from employees
join roles_employee on employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%Python_developer';

 --9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name from employees
join roles_employee on employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%QA_engineer';

 --10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name from employees
join roles_employee on employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%Manual_QA_engineer';

 --11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name from employees
join roles_employee on employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%Automation_QA_engineer';

 --12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Junior%';

 --13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Middle%';

 --14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Senior%';


 --15. Вывести зарплаты Java разработчиков

select monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%Java_developer';

 --16. Вывести зарплаты Python разработчиков

select monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%Python_developer';

 --17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Junior_Python_developer';

 --18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Middle_JavaScript_developer';

 --19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Senior_Java_developer';


 --20. Вывести зарплаты Junior QA инженеров

select monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Junior%QA_engineer';

 --21. Вывести среднюю зарплату всех Junior специалистов

select avg (monthly_salary) as monthly_salary_junior_avg
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like 'Junior%';

 --22. Вывести сумму зарплат JS разработчиков

select sum (monthly_salary) as monthly_salary_sum_JS
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%JavaScript_developer';

 --23. Вывести минимальную ЗП QA инженеров

select min (monthly_salary) as monthly_salary_min_QA
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%QA_engineer';

 --24. Вывести максимальную ЗП QA инженеров

select max (monthly_salary) as monthly_salary_max_QA
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%QA_engineer';

 --25. Вывести количество QA инженеров

select count (roles1.id) as count_QA
from roles_employee
join roles1 on roles_employee.role_id = roles1.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%QA_engineer';

 --26. Вывести количество Middle специалистов.

select count(roles1.id)  as count_middle
from roles_employee
join roles1 on roles_employee.role_id = roles1.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%Middle%';

 --27. Вывести количество разработчиков

select count (roles1.id) as count_dev
from roles_employee
join roles1 on roles_employee.role_id = roles1.id
join employees on roles_employee.employee_id = employees.id
where role_name like '%developer';

 --28. Вывести фонд (сумму) зарплаты разработчиков.

select sum (monthly_salary) as monthly_salary_sum_dev
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where role_name like '%developer';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
order by monthly_salary;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where monthly_salary < 2300
order by monthly_salary;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary1 on salary1.id = salary_id
join roles_employee on roles_employee.employee_id = employees.id
join roles1 on role_id = roles1.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
