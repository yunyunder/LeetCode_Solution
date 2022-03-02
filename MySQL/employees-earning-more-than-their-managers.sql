# 306 ms
SELECT e.name as Employee FROM Employee e, Employee m WHERE e.managerId = m.Id && e.salary > m.salary;

# 484 ms
SELECT a.name as Employee FROM Employee a
INNER JOIN Employee b ON a.managerID = b.id && a.salary > b.salary;

# 1018 ms
SELECT a.name as Employee FROM Employee a
WHERE a.managerId IS NOT NULL && a.salary > (
    SELECT salary FROM Employee 
    WHERE id = a.managerId
);