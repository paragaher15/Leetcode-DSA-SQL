CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      select DISTINCT salary
      from (
        select salary,
      DENSE_RANK () OVER (ORDER BY salary DESC) as rnk
      from Employee
      )
      as subquery
      where rnk = N


  );
END