USE Crime_UK
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)  -- Can store salaries with two decimal places
);


INSERT INTO employees (employee_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'HR', NULL),
(3, 'Charlie', 'IT', 70000),
(4, 'David', 'IT', 80000),
(5, 'Eve', 'IT', NULL),
(6, 'Frank', 'Finance', 60000),
(7, 'Grace', 'Finance', NULL),
(8, 'Hank', 'HR', 52000),
(9, 'Ivy', 'HR', 51000),
(10, 'Jack', 'IT', NULL),
(11, 'Kate', 'IT', 75000),
(12, 'Leo', 'Finance', 63000),
(13, 'Mia', 'Finance', 65000),
(14, 'Nina', 'HR', 54000),
(15, 'Oscar', 'HR', NULL),
(16, 'Paul', 'IT', 77000),
(17, 'Quinn', 'IT', 72000),
(18, 'Ryan', 'Finance', NULL),
(19, 'Sophia', 'Finance', 67000),
(20, 'Tom', 'HR', 53000),
(21, 'Uma', 'HR', NULL),
(22, 'Victor', 'IT', 78000),
(23, 'Wendy', 'IT', NULL),
(24, 'Xander', 'Finance', 64000),
(25, 'Yara', 'Finance', 66000),
(26, 'Zane', 'HR', 55000),
(27, 'Aaron', 'HR', NULL),
(28, 'Bella', 'IT', 71000),
(29, 'Chris', 'IT', NULL),
(30, 'Diana', 'Finance', 68000),
(31, 'Ethan', 'Finance', NULL),
(32, 'Fiona', 'HR', 52000),
(33, 'George', 'HR', NULL),
(34, 'Holly', 'IT', 74000),
(35, 'Ian', 'IT', 76000),
(36, 'Julia', 'Finance', 69000),
(37, 'Kevin', 'Finance', NULL),
(38, 'Luna', 'HR', 56000),
(39, 'Mike', 'HR', NULL),
(40, 'Nora', 'IT', 79000),
(41, 'Oliver', 'IT', 73000),
(42, 'Penny', 'Finance', 71000),
(43, 'Quentin', 'Finance', NULL),
(44, 'Rita', 'HR', 57000),
(45, 'Sam', 'HR', NULL),
(46, 'Tina', 'IT', 81000),
(47, 'Umar', 'IT', NULL),
(48, 'Vera', 'Finance', 72000),
(49, 'Will', 'Finance', 73000),
(50, 'Xenia', 'HR', 58000),
(51, 'Yusuf', 'HR', NULL),
(52, 'Zara', 'IT', 83000),
(53, 'Adam', 'IT', NULL),
(54, 'Blake', 'Finance', 74000),
(55, 'Catherine', 'Finance', 75000),
(56, 'Daniel', 'HR', 59000),
(57, 'Elena', 'HR', NULL),
(58, 'Felix', 'IT', 82000),
(59, 'Gabby', 'IT', NULL),
(60, 'Henry', 'Finance', 76000),
(61, 'Isla', 'Finance', NULL),
(62, 'Jackie', 'HR', 60000),
(63, 'Kyle', 'HR', NULL),
(64, 'Laura', 'IT', 85000),
(65, 'Max', 'IT', 87000),
(66, 'Nancy', 'Finance', 78000),
(67, 'Omar', 'Finance', NULL),
(68, 'Peter', 'HR', 61000),
(69, 'Quincy', 'HR', NULL),
(70, 'Rachel', 'IT', 88000),
(71, 'Steve', 'IT', NULL),
(72, 'Tara', 'Finance', 79000),
(73, 'Ulysses', 'Finance', NULL),
(74, 'Vanessa', 'HR', 62000),
(75, 'Walter', 'HR', NULL),
(76, 'Xander', 'IT', 89000),
(77, 'Yvonne', 'IT', NULL),
(78, 'Zeke', 'Finance', 80000),
(79, 'Alex', 'Finance', 81000),
(80, 'Betty', 'HR', 63000),
(81, 'Cody', 'HR', NULL),
(82, 'Derek', 'IT', 91000),
(83, 'Elaine', 'IT', NULL),
(84, 'Fred', 'Finance', 82000),
(85, 'Gloria', 'Finance', NULL),
(86, 'Hector', 'HR', 64000),
(87, 'Isabella', 'HR', NULL),
(88, 'Jake', 'IT', 92000),
(89, 'Kylie', 'IT', NULL),
(90, 'Liam', 'Finance', 83000),
(91, 'Megan', 'Finance', NULL),
(92, 'Noah', 'HR', 65000),
(93, 'Olivia', 'HR', NULL),
(94, 'Patrick', 'IT', 94000),
(95, 'Quinn', 'IT', NULL),
(96, 'Riley', 'Finance', 84000),
(97, 'Sarah', 'Finance', NULL),
(98, 'Tommy', 'HR', 66000),
(99, 'Uma', 'HR', NULL),
(100, 'Vince', 'IT', 95000);


SELECT * FROM employees


SELECT *,
       COALESCE(salary, 
                round((SELECT AVG(salary) 
                 FROM employees 
                 WHERE department = e.department),2)) AS adjusted_salary
FROM employees e;

SELECT *,
       COALESCE(salary, 
                CAST(ROUND(COALESCE((SELECT AVG(salary) 
                                FROM employees 
                                WHERE department = e.department), 2)AS DECIMAL(10,2))) AS adjusted_salary
FROM employees e;

SELECT *,
       COALESCE(salary, 
                CAST((SELECT AVG(salary) 
                            FROM employees I
                            WHERE I.department = e.department) AS DECIMAL(10,2))) AS adjusted_salary
FROM employees e;

SELECT DEPARTMENT, AVG(salary) FROM employees
GROUP BY department

SELECT * INTO E FROM employees WHERE 1=2;

DROP TABLE E