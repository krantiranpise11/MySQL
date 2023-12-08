
drop function if exists square;
delimiter $
create function square(x int) returns int
deterministic
begin
    declare sq int;
    set sq:= x*x;
    return sq;
end $
delimiter ;


drop function if exists bonus;
delimiter $
create function bonus(x int, y int) returns int
deterministic
begin
    declare bonus int;
    set bonus:= (ifnull(x,0))*(ifnull(y,0));
    return bonus;
end $
delimiter ;


drop function if exists autoincfunc;
delimiter $
create function autoincfunc() returns int
deterministic
begin
    declare z int;
    select max(id) +1 into z from d1;
    return z;
end $
delimiter ;


