drop procedure if exists deptDetails;
delimiter $
create procedure deptDetails()
begin
    declare _ename varchar(20);
	declare c1 cursor for select ename from emp;
	declare exit handler for 1329 select "end of file";
	open c1;
	l1:loop
	   fetch c1 into _ename;
	   select _ename;
	end loop l1;
	close c1;
	
end $
delimiter ;