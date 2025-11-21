-- select p.personId,p.lastName,
-- A.city,A.state
-- from Person p
-- left join Address A
-- on p.personId = A.personId 

SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
