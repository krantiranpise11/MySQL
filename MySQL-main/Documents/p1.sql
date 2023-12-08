/*

11.	Write a procedure to display the department number and employee name in the following format.
Output: -
10 -> (AARAV, THOMAS, CLARK, KING, MILLER)
20 -> (SHARMIN, BANDISH, SMITH, JONES, SCOTT, FRED, ADAMS, FORD)
30 -> (GITA, ALLEN, WARD, MARTIN, BLAKE, TURNER, JAMES, HOFFMAN, GRASS)
40 –> (No employee work in department 40…)
50 -> (VRUSHALI, SANGITA, SUPRIYA)

*/

drop procedure if exists deptDetails;
delimiter $
create procedure deptDetails()
begin
	select DEPTNO, group_concat(ename) Employees from emp group by deptno;
end $
delimiter ;
