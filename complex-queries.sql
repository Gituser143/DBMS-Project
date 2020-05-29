-- Aggregate Queries
--------------------

-- SELECT AVG(salary)
-- FROM Employee NATURAL JOIN Roles;

-- Find the count of customers each agent manages
SELECT U.name, C.agent_id, COUNT(C.agent_id)
FROM customer C, Employee U
WHERE U.user_id = C.agent_id
GROUP BY (U.name, C.agent_id);

-- Find agents with salary higher than average salary
SELECT name, salary
FROM Employee NATURAL JOIN Roles
WHERE salary > (
  SELECT AVG(salary)
  FROM Employee NATURAL JOIN Roles
);

-- Nested Queries
-----------------

-- Find customer name, id, vehicle number and type where vehicles have insrance lasting beyong 2023
SELECT name, customer_id, vehicle_number, type
FROM Customer C INNER JOIN Vehicle V on V.owner_id = C.customer_id
WHERE C.customer_id in (
  SELECT owner_id
  FROM insurance
  WHERE insurance_validity > '2023-02-08'
);

-- Find agents with customers having cars registered before 2022
SELECT U.name, U.user_id
FROM Employee U
WHERE user_id in (
  SELECT C.agent_id
  FROM Customer C
  WHERE C.customer_id in (
    SELECT V.owner_id
    FROM vehicle V
    WHERE V.vehicle_number in (
      SELECT vehicle_number
      FROM Registration
      WHERE (date_of_registration < '2022-01-01')
    )
  )
);

-- Correlated Queries
---------------------

-- Find insurance details for all non-geared motor cycles
SELECT I.vehicle_number, I.insurance_amount, I.insurance_validity, I.insurance_type
FROM insurance I
WHERE I.registration_id = (
  SELECT R.registration_id
  FROM Registration R
  WHERE R.vehicle_type = 'MCWOG'
);

-- Update vehicle make and model based off type mentioned in Registration
UPDATE Vehicle V
SET make_model = CONCAT((
  SELECT R.vehicle_type
  FROM Registration R
  WHERE V.vehicle_number = R.vehicle_number
), ': ', make_model);

-- Outer JOIN
-------------
SELECT * FROM Employee FULL OUTER JOIN Roles on Employee.role_name = Roles.role_name;

SELECT * FROM Employee FULL OUTER JOIN Insurance on Employee.user_id = Insurance.owner_id;
