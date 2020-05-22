-- Aggregate Queries
--------------------

-- Find the count of customers each agent manages
SELECT U.name, C.agent_id, COUNT(C.agent_id)
FROM customer C, users U
WHERE U.user_id = C.agent_id
GROUP BY (U.name, C.agent_id);

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

-- Find agents with customers having cars registered before 2020
SELECT U.name, U.user_id
FROM Users U
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

SELECT name, vehicle_number, registration_id, insurance_id FROM customer C INNER JOIN insurance I on C.customer_id = I.owner_id;
